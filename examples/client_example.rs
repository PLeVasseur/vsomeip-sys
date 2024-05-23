use std::sync::Mutex;
use cxx::let_cxx_string;
use lazy_static::lazy_static;
use vsomeip_sys::AvailabilityHandlerFnPtr;
use vsomeip_sys::pinned::{get_pinned_application, get_pinned_runtime, get_pinned_message, make_application_wrapper, make_runtime_wrapper, make_message_wrapper};
use vsomeip_sys::vsomeip::{application, runtime};

const SAMPLE_SERVICE_ID: u16 = 0x1234;
const SAMPLE_INSTANCE_ID: u16 = 0x5678;

type CallbackFunc = extern "C" fn(vsomeip_sys::vsomeip::service_t, vsomeip_sys::vsomeip::instance_t, bool);

lazy_static! {
    static ref CALLBACK_STORAGE: Mutex<Option<Box<dyn Fn(vsomeip_sys::vsomeip::service_t, vsomeip_sys::vsomeip::instance_t, bool) + Send + Sync>>> = Mutex::new(None);
}

extern "C" fn callback_wrapper(service: vsomeip_sys::vsomeip::service_t, instance: vsomeip_sys::vsomeip::instance_t, availability: bool) {
    let callback = CALLBACK_STORAGE.lock().unwrap();
    if let Some(ref func) = *callback {
        func(service, instance, availability);
    }
}

fn create_callback<F>(func: F) -> CallbackFunc
    where
        F: Fn(vsomeip_sys::vsomeip::service_t, vsomeip_sys::vsomeip::instance_t, bool) + 'static + Send + Sync,
{
    let mut storage = CALLBACK_STORAGE.lock().unwrap();
    *storage = Some(Box::new(func));
    callback_wrapper
}

fn main() {
    let my_runtime = runtime::get();
    let runtime_wrapper = make_runtime_wrapper(my_runtime);

    let_cxx_string!(my_app_str = "World");
    let app_wrapper = make_application_wrapper(
        get_pinned_runtime(&runtime_wrapper).create_application(&my_app_str),
    );

    let my_callback = create_callback(|service, instance, availability| {
        println!("Service: {:?}, Instance: {:?}, Availability: {}", service, instance, availability);
    });
    let callback = AvailabilityHandlerFnPtr(my_callback);
    get_pinned_application(&app_wrapper).init();
    get_pinned_application(&app_wrapper).register_availability_handler(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID, callback, vsomeip_sys::vsomeip::ANY_MAJOR, vsomeip_sys::vsomeip::ANY_MINOR);
    get_pinned_application(&app_wrapper).request_service(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID, vsomeip_sys::vsomeip::ANY_MAJOR, vsomeip_sys::vsomeip::ANY_MINOR);

    let request = make_message_wrapper(get_pinned_runtime(&runtime_wrapper).create_request(true));


    get_pinned_application(&app_wrapper).start();
}