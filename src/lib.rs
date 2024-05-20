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
    safety!(unsafe) // see details of unsafety policies described in the 'safety' section of the book
    generate!("vsomeip_v3::runtime") // add this line for each function or type you wish to generate
    generate!("vsomeip_v3::application")
    generate!("vsomeip_v3::message_t") // add this line for each function or type you wish to generate
    generate!("RuntimeWrapper")
    generate!("make_runtime_wrapper")
    generate!("ApplicationWrapper")
    generate!("make_application_wrapper")
}

mod pinned {
    use crate::ffi::vsomeip_v3::{application, runtime};
    use crate::ffi::{ApplicationWrapper, RuntimeWrapper};
    use std::pin::Pin;

    pub fn get_pinned_runtime(wrapper: &RuntimeWrapper) -> Pin<&mut runtime> {
        unsafe { Pin::new_unchecked(wrapper.get_mut().as_mut().unwrap()) }
    }

    pub fn get_pinned_application(wrapper: &ApplicationWrapper) -> Pin<&mut application> {
        unsafe { Pin::new_unchecked(wrapper.get_mut().as_mut().unwrap()) }
    }
}

#[cfg(test)]
mod tests {
    use crate::ffi::vsomeip_v3::runtime;
    use crate::ffi::{make_application_wrapper, make_runtime_wrapper, RuntimeWrapper};
    use crate::pinned::{get_pinned_application, get_pinned_runtime};
    use cxx::let_cxx_string;

    #[test]
    fn test_make_runtime() {
        let my_runtime = runtime::get();
        let runtime_wrapper = make_runtime_wrapper(my_runtime);

        let_cxx_string!(my_app_str = "my_app");
        let app_wrapper = make_application_wrapper(
            get_pinned_runtime(&runtime_wrapper).create_application(&my_app_str),
        );
        get_pinned_application(&app_wrapper).init();
        get_pinned_application(&app_wrapper).start();
    }
}
