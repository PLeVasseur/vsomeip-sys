use cxx::let_cxx_string;
use vsomeip_sys::AvailabilityHandlerFnPtr;
use vsomeip_sys::pinned::{get_pinned_application, get_pinned_runtime, make_application_wrapper, make_runtime_wrapper};
use vsomeip_sys::vsomeip::{application, runtime};

const SAMPLE_SERVICE_ID: u16 = 0x1234;
const SAMPLE_INSTANCE_ID: u16 = 0x5678;

fn main() {
    let my_runtime = runtime::get();
    let runtime_wrapper = make_runtime_wrapper(my_runtime);

    let_cxx_string!(my_app_str = "World");
    let app_wrapper = make_application_wrapper(
        get_pinned_runtime(&runtime_wrapper).create_application(&my_app_str),
    );

    extern "C" fn callback(service: vsomeip_sys::vsomeip::service_t, instance: vsomeip_sys::vsomeip::instance_t, availability: bool) {
        println!("hello from Rust!");
    }
    let callback = AvailabilityHandlerFnPtr(callback);

    get_pinned_application(&app_wrapper).init();
    get_pinned_application(&app_wrapper).register_availability_handler(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID, callback, vsomeip_sys::vsomeip::ANY_MAJOR, vsomeip_sys::vsomeip::ANY_MINOR);
    get_pinned_application(&app_wrapper).start();
}