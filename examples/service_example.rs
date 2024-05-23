use cxx::let_cxx_string;
use vsomeip_sys::pinned::{get_pinned_application, get_pinned_runtime, make_application_wrapper, make_runtime_wrapper};
use vsomeip_sys::vsomeip::{application, runtime};

const SAMPLE_SERVICE_ID: u16 = 0x1234;
const SAMPLE_INSTANCE_ID: u16 = 0x5678;
const SAMPLE_MAJOR_VERSION: u8 = 1;
const SAMPLE_MINOR_VERSION: u32 = 2;

fn main() {
    let my_runtime = runtime::get();
    let runtime_wrapper = make_runtime_wrapper(my_runtime);

    let_cxx_string!(my_app_str = "World");
    let app_wrapper = make_application_wrapper(
        get_pinned_runtime(&runtime_wrapper).create_application(&my_app_str),
    );
    get_pinned_application(&app_wrapper).init();
    get_pinned_application(&app_wrapper).offer_service(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID, SAMPLE_MAJOR_VERSION, SAMPLE_MINOR_VERSION);
    get_pinned_application(&app_wrapper).start();
}