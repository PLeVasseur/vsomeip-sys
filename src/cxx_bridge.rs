#[cxx::bridge]
pub mod bar {
    unsafe extern "C++" {
        include!("vsomeip/vsomeip.hpp");
        include!("include/application_wrapper.h");
        include!("application_registrations.h");

        type message_handler_fn_ptr = crate::MessageHandlerFnPtr;
        type ApplicationWrapper = crate::ffi::ApplicationWrapper;

        pub unsafe fn register_message_handler_fn_ptr(
            _application: *mut ApplicationWrapper,
            _service: u16,
            _instance: u16,
            _method: u16,
            _fn_ptr_handler: message_handler_fn_ptr,
        );
    }
}