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
    #include "payload_wrapper.h"
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
    generate!("upcast")
    generate!("PayloadWrapper")
    generate!("make_payload_wrapper")
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

        pub fn register_availability_handler(
            self: Pin<&mut application>,
            _service: u16,
            _instance: u16,
            _fn_ptr_handler: availability_handler_fn_ptr,
            _major: u8,
            _minor: u32,
        );

        type message_handler_fn_ptr = crate::MessageHandlerFnPtr;

        pub fn register_message_handler(
            self: Pin<&mut application>,
            _service: u16,
            _instance: u16,
            _method: u16,
            _fn_ptr_handler: message_handler_fn_ptr,
        );

        type payload = crate::vsomeip::payload;
        pub unsafe fn set_data(
            self: Pin<&mut payload>,
            _data: *const u8,
            _length: u32,
        );

        pub fn get_data(
            self: &payload,
        ) -> *const u8;

        pub fn get_length(self: &payload) -> u32;
    }
}

use cxx::{type_id, ExternType, SharedPtr};

#[repr(transparent)]
pub struct AvailabilityHandlerFnPtr(
    pub  extern "C" fn(
        service: ffi::vsomeip_v3::service_t,
        instance: ffi::vsomeip_v3::instance_t,
        availability: bool,
    ),
);

unsafe impl ExternType for AvailabilityHandlerFnPtr {
    type Id = type_id!("vsomeip_v3::availability_handler_fn_ptr");
    type Kind = cxx::kind::Trivial;
}

#[repr(transparent)]
pub struct MessageHandlerFnPtr(pub extern "C" fn(&SharedPtr<vsomeip::message>));

unsafe impl ExternType for MessageHandlerFnPtr {
    type Id = type_id!("vsomeip_v3::message_handler_fn_ptr");
    type Kind = cxx::kind::Trivial;
}

pub mod vsomeip {
    pub use crate::ffi::vsomeip_v3::*;
}

pub mod pinned {
    use std::cell::UnsafeCell;
    use crate::ffi::vsomeip_v3::{application, message, runtime, payload};
    pub use crate::ffi::{
        make_application_wrapper, make_message_wrapper, make_runtime_wrapper, make_payload_wrapper, ApplicationWrapper,
        MessageWrapper, RuntimeWrapper, PayloadWrapper
    };
    use std::pin::Pin;
    use std::slice;
    pub use crate::ffi::upcast;
    use crate::vsomeip::message_base;

    pub fn get_pinned_runtime(wrapper: &RuntimeWrapper) -> Pin<&mut runtime> {
        unsafe { Pin::new_unchecked(wrapper.get_mut().as_mut().unwrap()) }
    }

    pub fn get_pinned_application(wrapper: &ApplicationWrapper) -> Pin<&mut application> {
        unsafe { Pin::new_unchecked(wrapper.get_mut().as_mut().unwrap()) }
    }

    pub fn get_pinned_message(wrapper: &MessageWrapper) -> Pin<&mut message> {
        unsafe { Pin::new_unchecked(wrapper.get_mut().as_mut().unwrap()) }
    }

    pub fn get_message(wrapper: &MessageWrapper) -> Pin<&mut message> {
        unsafe {
            let msg_ptr: *mut message = wrapper.get_mut();
            if msg_ptr.is_null() {
                panic!("msg_ptr is null");
            }
            Pin::new_unchecked(msg_ptr.as_mut().unwrap())
        }
    }

    pub fn get_pinned_message_base(wrapper: &MessageWrapper) -> Pin<&mut message_base> {
        unsafe {
            let msg_ptr: *mut message = wrapper.get_mut();
            if msg_ptr.is_null() {
                panic!("msg_ptr is null");
            }

            // Convert the raw pointer to a mutable reference
            let msg_ref: &mut message = &mut *msg_ptr;

            // Pin the mutable reference
            let pinned_msg_ref: Pin<&mut message> = Pin::new_unchecked(msg_ref);

            // Use the upcast function to get a pinned mutable reference to message_base
            let pinned_base_ref: Pin<&mut message_base> = upcast(pinned_msg_ref);

            pinned_base_ref
        }
    }

    pub fn get_pinned_payload(wrapper: &PayloadWrapper) -> Pin<&mut payload> {
        unsafe { Pin::new_unchecked(wrapper.get_mut().as_mut().unwrap()) }
    }

    pub fn set_data_safe(
        payload: Pin<&mut payload>,
        _data: Box<[u8]>,
    ) {
        // Get the length of the data
        let length = _data.len() as u32;

        // Get a pointer to the data
        let data_ptr = _data.as_ptr();

        unsafe { payload.set_data(data_ptr, length); }
    }

    pub fn get_data_safe(
        payload_wrapper: &PayloadWrapper
    ) -> Vec<u8> {

        let length = get_pinned_payload(&payload_wrapper).get_length();
        let data_ptr = get_pinned_payload(&payload_wrapper).get_data();

        // Convert the raw pointer and length to a slice
        let data_slice: &[u8] = unsafe { slice::from_raw_parts(data_ptr, length as usize) };

        // Convert the slice to a Vec
        let data_vec: Vec<u8> = data_slice.to_vec();

        data_vec
    }
}

#[cfg(test)]
mod tests {
    use crate::ffi::vsomeip_v3::runtime;
    use crate::ffi::{make_application_wrapper, make_message_wrapper, make_runtime_wrapper, make_payload_wrapper};
    use crate::pinned::{get_pinned_application, get_pinned_payload, get_pinned_message_base, get_pinned_runtime, upcast, set_data_safe, get_data_safe};
    use crate::vsomeip::{message, message_base};
    use crate::{ffi, vsomeip, AvailabilityHandlerFnPtr};
    use cxx::let_cxx_string;
    use std::pin::Pin;
    use std::slice;

    #[test]
    fn test_make_runtime() {
        let my_runtime = runtime::get();
        let runtime_wrapper = make_runtime_wrapper(my_runtime);

        let_cxx_string!(my_app_str = "my_app");
        let app_wrapper = make_application_wrapper(
            get_pinned_runtime(&runtime_wrapper).create_application(&my_app_str),
        );
        get_pinned_application(&app_wrapper).init();

        extern "C" fn callback(
            service: ffi::vsomeip_v3::service_t,
            instance: ffi::vsomeip_v3::instance_t,
            availability: bool,
        ) {
            println!("hello from Rust!");
        }
        let callback = AvailabilityHandlerFnPtr(callback);
        get_pinned_application(&app_wrapper).register_availability_handler(1, 2, callback, 3, 4);
        let request =
            make_message_wrapper(get_pinned_runtime(&runtime_wrapper).create_request(true));

        let reliable = get_pinned_message_base(&request).is_reliable();

        println!("reliable? {reliable}");

        let request = make_message_wrapper(get_pinned_runtime(&runtime_wrapper).create_request(true));
        get_pinned_message_base(&request).set_service(1);
        get_pinned_message_base(&request).set_instance(2);
        get_pinned_message_base(&request).set_method(3);

        let payload_wrapper = make_payload_wrapper(get_pinned_runtime(&runtime_wrapper).create_payload());
        let foo = get_pinned_payload(&payload_wrapper);

        // Data to be passed to set_data
        let data: Vec<u8> = vec![1, 2, 3, 4, 5];

        // Get the length of the data
        let length = data.len() as u32;

        // Get a pointer to the data
        let data_ptr = data.as_ptr();

        set_data_safe(get_pinned_payload(&payload_wrapper), Box::from(data));

        let data_vec = get_data_safe(&payload_wrapper);

        // let retrieved_data_ptr = get_pinned_payload(&payload_wrapper).get_data();
        //
        // // Convert the raw pointer and length to a slice
        // let data_slice: &[u8] = unsafe { slice::from_raw_parts(retrieved_data_ptr, length as usize) };
        //
        // // Convert the slice to a Vec
        // let data_vec: Vec<u8> = data_slice.to_vec();

        // Print the data
        println!("{:?}", data_vec);
    }
}
