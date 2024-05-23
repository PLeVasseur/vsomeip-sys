use crossbeam_channel::{bounded, Receiver, Sender};
use cxx::{let_cxx_string, SharedPtr};
use lazy_static::lazy_static;
use std::sync::Mutex;
use std::thread;
use std::thread::sleep;
use std::time::Duration;
use vsomeip_sys::pinned::{get_pinned_application, get_pinned_payload, get_pinned_message_base, get_pinned_runtime, make_application_wrapper, make_message_wrapper, make_runtime_wrapper, make_payload_wrapper};
use vsomeip_sys::vsomeip::{application, message, message_base, runtime};
use vsomeip_sys::AvailabilityHandlerFnPtr;

const SAMPLE_SERVICE_ID: u16 = 0x1234;
const SAMPLE_INSTANCE_ID: u16 = 0x5678;
const SAMPLE_METHOD_ID: u16 = 0x0421;

type CallbackFunc =
    extern "C" fn(vsomeip_sys::vsomeip::service_t, vsomeip_sys::vsomeip::instance_t, bool);

lazy_static! {
    static ref CALLBACK_STORAGE: Mutex<
        Option<
            Box<
                dyn Fn(vsomeip_sys::vsomeip::service_t, vsomeip_sys::vsomeip::instance_t, bool)
                    + Send
                    + Sync,
            >,
        >,
    > = Mutex::new(None);
}

extern "C" fn callback_wrapper(
    service: vsomeip_sys::vsomeip::service_t,
    instance: vsomeip_sys::vsomeip::instance_t,
    availability: bool,
) {
    let callback = CALLBACK_STORAGE.lock().unwrap();
    if let Some(ref func) = *callback {
        func(service, instance, availability);
    }
}

fn create_callback<F>(func: F) -> CallbackFunc
where
    F: Fn(vsomeip_sys::vsomeip::service_t, vsomeip_sys::vsomeip::instance_t, bool)
        + 'static
        + Send
        + Sync,
{
    let mut storage = CALLBACK_STORAGE.lock().unwrap();
    *storage = Some(Box::new(func));
    callback_wrapper
}

enum VsomeipCommand {
    Initialize,
    SendMessage,
}

fn event_loop(rx: Receiver<VsomeipCommand>) {
    let my_runtime = runtime::get();
    let runtime_wrapper = make_runtime_wrapper(my_runtime);

    let_cxx_string!(my_app_str = "World");
    let app_wrapper = make_application_wrapper(
        get_pinned_runtime(&runtime_wrapper).create_application(&my_app_str),
    );

    let my_callback = create_callback(|service, instance, availability| {
        println!(
            "Service: {:?}, Instance: {:?}, Availability: {}",
            service, instance, availability
        );
    });
    let callback = AvailabilityHandlerFnPtr(my_callback);
    get_pinned_application(&app_wrapper).init();
    get_pinned_application(&app_wrapper).register_availability_handler(
        SAMPLE_SERVICE_ID,
        SAMPLE_INSTANCE_ID,
        callback,
        vsomeip_sys::vsomeip::ANY_MAJOR,
        vsomeip_sys::vsomeip::ANY_MINOR,
    );
    get_pinned_application(&app_wrapper).request_service(
        SAMPLE_SERVICE_ID,
        SAMPLE_INSTANCE_ID,
        vsomeip_sys::vsomeip::ANY_MAJOR,
        vsomeip_sys::vsomeip::ANY_MINOR,
    );
    get_pinned_application(&app_wrapper).start();
}

fn main() {
    let (tx, rx) = bounded(100);

    thread::spawn(move || {
        event_loop(rx);
    });

    println!("past the thread spawn");

    sleep(Duration::from_millis(2000));

    println!("past the sleep");

    let my_runtime = runtime::get();
    let runtime_wrapper = make_runtime_wrapper(my_runtime);

    println!("after we get the runtime");

    let_cxx_string!(my_app_str = "World");

    let app_wrapper =
        make_application_wrapper(get_pinned_runtime(&runtime_wrapper).get_application(&my_app_str));

    let request = make_message_wrapper(get_pinned_runtime(&runtime_wrapper).create_request(true));
    get_pinned_message_base(&request).set_service(SAMPLE_SERVICE_ID);
    get_pinned_message_base(&request).set_instance(SAMPLE_INSTANCE_ID);
    get_pinned_message_base(&request).set_method(SAMPLE_METHOD_ID);

    let payload_wrapper = make_payload_wrapper(get_pinned_runtime(&runtime_wrapper).create_payload());
    // get_pinned_payload(payload_wrapper)

    let shared_ptr_message = request.as_ref().unwrap().get_shared_ptr();
    println!("attempting send...");
    get_pinned_application(&app_wrapper).send(shared_ptr_message);

    let request = make_message_wrapper(get_pinned_runtime(&runtime_wrapper).create_request(true));
    get_pinned_message_base(&request).set_service(SAMPLE_SERVICE_ID);
    get_pinned_message_base(&request).set_instance(SAMPLE_INSTANCE_ID);
    get_pinned_message_base(&request).set_method(SAMPLE_METHOD_ID);
    let shared_ptr_message = request.as_ref().unwrap().get_shared_ptr();
    println!("attempting send...");
    get_pinned_application(&app_wrapper).send(shared_ptr_message);

    sleep(Duration::from_millis(10000));
}
