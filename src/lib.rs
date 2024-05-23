/********************************************************************************
 * Copyright (c) 2024 Contributors to the Eclipse Foundation
 *
 * See the NOTICE file(s) distributed with this work for additional
 * information regarding copyright ownership.
 *
 * This program and the accompanying materials are made available under the
 * terms of the Apache License Version 2.0 which is available at
 * https://www.apache.org/licenses/LICENSE-2.0
 *
 * SPDX-License-Identifier: Apache-2.0
 ********************************************************************************/

use autocxx::prelude::*; // use all the main autocxx functions

include_cpp! {
    #include "vsomeip/vsomeip.hpp"
    #include "runtime_wrapper.h"
    #include "application_wrapper.h"
    #include "message_wrapper.h"
    safety!(unsafe) // see details of unsafety policies described in the 'safety' section of the book
    generate!("vsomeip_v3::runtime") // add this line for each function or type you wish to generate
    generate!("vsomeip_v3::application")
    generate!("vsomeip_v3::message_base") // add this line for each function or type you wish to generate
    generate!("vsomeip_v3::message_t") // add this line for each function or type you wish to generate
    generate!("vsomeip_v3::ANY_MAJOR")
    generate!("vsomeip_v3::ANY_MINOR")
    generate!("RuntimeWrapper")
    generate!("make_runtime_wrapper")
    generate!("ApplicationWrapper")
    generate!("make_application_wrapper")
    generate!("MessageWrapper")
    generate!("make_message_wrapper")
    // generate!("return_availability_handler")
    // generate!("vsomeip_v3::availability_handler_fn_ptr")
    // generate!("fake_availability_state_handler_fn")
    // generate!("create_availability_handler")
    // generate!("destroy_availability_handler")
    // generate!("call_availability_handler")
    // generate!("ApplicationWrapper")
    // generate!("make_application_wrapper")
}

#[cxx::bridge(namespace = "vsomeip_v3")]
mod foo {
    unsafe extern "C++" {
        include!("vsomeip/vsomeip.hpp");

        type application = crate::vsomeip::application;
        type availability_handler_fn_ptr = crate::AvailabilityHandlerFnPtr;

        pub fn register_availability_handler(self: Pin<&mut application>,
                                             _service: u16,
                                             _instance: u16,
                                             _fn_ptr_handler: availability_handler_fn_ptr,
                                             _major: u8,
                                             _minor: u32
        );

        type message_handler_fn_ptr = crate::MessageHandlerFnPtr;

        pub fn register_message_handler(self: Pin<&mut application>,
                                            _service: u16,
                                            _instance: u16,
                                            _method: u16,
                                            _fn_ptr_handler: message_handler_fn_ptr,
        );
    }
}

use cxx::{type_id, ExternType, SharedPtr};

#[repr(transparent)]
pub struct AvailabilityHandlerFnPtr(
    pub extern "C" fn(service: ffi::vsomeip_v3::service_t, instance: ffi::vsomeip_v3::instance_t, availability: bool),
);

unsafe impl ExternType for AvailabilityHandlerFnPtr {
    type Id = type_id!("vsomeip_v3::availability_handler_fn_ptr");
    type Kind = cxx::kind::Trivial;
}

#[repr(transparent)]
pub struct  MessageHandlerFnPtr(
    pub extern "C" fn(&SharedPtr<vsomeip::message>),
);

unsafe impl ExternType for MessageHandlerFnPtr {
    type Id = type_id!("vsomeip_v3::message_handler_fn_ptr");
    type Kind = cxx::kind::Trivial;
}

pub mod vsomeip {
    pub use crate::ffi::vsomeip_v3::*;
}

pub mod pinned {
    use crate::ffi::vsomeip_v3::{application, runtime, message};
    pub use crate::ffi::{ApplicationWrapper, RuntimeWrapper, MessageWrapper, make_runtime_wrapper, make_application_wrapper, make_message_wrapper};
    use std::pin::Pin;

    pub fn upcast<D, S>(derived: Pin<&mut D>) -> Pin<&mut S> {
        unsafe {
            let subclass_obs_ptr = Pin::into_inner_unchecked(derived) as *mut D;
            Pin::new_unchecked(&mut *subclass_obs_ptr.cast::<S>())
        }
    }

    pub fn get_pinned_runtime(wrapper: &RuntimeWrapper) -> Pin<&mut runtime> {
        unsafe { Pin::new_unchecked(wrapper.get_mut().as_mut().unwrap()) }
    }

    pub fn get_pinned_application(wrapper: &ApplicationWrapper) -> Pin<&mut application> {
        unsafe { Pin::new_unchecked(wrapper.get_mut().as_mut().unwrap()) }
    }

    pub fn get_pinned_message(wrapper: &MessageWrapper) -> Pin<&mut message> {
        unsafe { Pin::new_unchecked(wrapper.get_mut().as_mut().unwrap()) }
    }
}

#[cfg(test)]
mod tests {
    use std::pin::Pin;
    use crate::ffi::vsomeip_v3::runtime;
    use crate::ffi::{make_application_wrapper, make_message_wrapper, make_runtime_wrapper};
    use crate::pinned::{get_pinned_application, get_pinned_message, get_pinned_runtime, upcast};
    use cxx::let_cxx_string;
    use crate::{AvailabilityHandlerFnPtr, ffi, vsomeip};
    use crate::vsomeip::{message, message_base};

    #[test]
    fn test_make_runtime() {

        let my_runtime = runtime::get();
        let runtime_wrapper = make_runtime_wrapper(my_runtime);

        let_cxx_string!(my_app_str = "my_app");
        let app_wrapper = make_application_wrapper(
            get_pinned_runtime(&runtime_wrapper).create_application(&my_app_str),
        );
        get_pinned_application(&app_wrapper).init();

        extern "C" fn callback(service: ffi::vsomeip_v3::service_t, instance: ffi::vsomeip_v3::instance_t, availability: bool) {
            println!("hello from Rust!");
        }
        let callback = AvailabilityHandlerFnPtr(callback);
        get_pinned_application(&app_wrapper).register_availability_handler(1, 2, callback, 3, 4);
        let request = make_message_wrapper(get_pinned_runtime(&runtime_wrapper).create_request(true));
        // let foo: Pin<&mut vsomeip::message_base> = upcast(get_pinned_message(&request));
        // foo.set_service(10);

        upcast::<message, message_base>(get_pinned_message(&request)).set_service(10);
    }
}
