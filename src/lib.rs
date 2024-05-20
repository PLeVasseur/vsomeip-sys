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
    safety!(unsafe) // see details of unsafety policies described in the 'safety' section of the book
    generate!("vsomeip_v3::runtime") // add this line for each function or type you wish to generate
    generate!("vsomeip_v3::application")
    generate!("vsomeip_v3::message_t") // add this line for each function or type you wish to generate
}

#[cfg(test)]
mod tests {
    use crate::ffi::vsomeip_v3::runtime;
    use cxx::let_cxx_string;

    #[test]
    fn test_make_runtime() {
        let mut my_runtime = runtime::get();

        let_cxx_string!(my_app_str = "my_app");

        let mut new_app = my_runtime.pin_mut().create_application(&my_app_str);
        new_app.pin_mut().init();
        new_app.pin_mut().start();
    }
}
