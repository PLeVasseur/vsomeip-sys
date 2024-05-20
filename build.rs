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

use decompress::ExtractOptsBuilder;
use std::path::{Path, PathBuf};
use std::{env, fs};

const VSOMEIP_TAGGED_RELEASE_BASE: &str = "https://github.com/COVESA/vsomeip/archive/refs/tags/";
const VSOMEIP_VERSION_ARCHIVE: &str = "3.4.10.tar.gz";

fn main() -> miette::Result<()> {
    let out_dir = env::var_os("OUT_DIR").unwrap();
    let vsomeip_archive_dest = Path::new(&out_dir).join("vsomeip").join("vsomeip.tar.gz");
    let vsomeip_decompressed_folder = Path::new(&out_dir).join("vsomeip").join("vsomeip-src");
    let vsomeip_archive_url = format!("{VSOMEIP_TAGGED_RELEASE_BASE}{VSOMEIP_VERSION_ARCHIVE}");

    download_and_write_file(&*vsomeip_archive_url, &vsomeip_archive_dest)
        .expect("Unable to download released archive");
    decompress::decompress(
        vsomeip_archive_dest,
        vsomeip_decompressed_folder.clone(),
        &ExtractOptsBuilder::default().strip(1).build().unwrap(),
    )
    .expect("Unable to extract tar.gz");

    // let interface_path = vsomeip_decompressed_folder.join("interface"); // include path
    let interface_path = Path::new("src").join("vsomeip-src").join("interface");
    let mut b = autocxx_build::Builder::new("src/lib.rs", &[&interface_path]).build()?;
    b.flag_if_supported("-std=c++17").compile("autocxx-demo"); // arbitrary library name, pick anything
    println!("cargo:rerun-if-changed=src/lib.rs");

    Ok(())
}

// Retrieves a file from `url` (from GitHub, for instance) and places it in the build directory (`OUT_DIR`) with the name
// provided by `destination` parameter.
fn download_and_write_file(
    url: &str,
    dest_path: &PathBuf,
) -> Result<(), Box<dyn std::error::Error>> {
    // Send a GET request to the URL
    match reqwest::blocking::get(url) {
        Ok(mut response) => {
            if let Some(parent_path) = dest_path.parent() {
                std::fs::create_dir_all(parent_path)?;
            }
            let mut out_file = fs::File::create(dest_path)?;

            let result: Result<(), Box<dyn std::error::Error>> = response
                .copy_to(&mut out_file)
                .map(|_| ())
                .map_err(|e| e.to_string().into());

            result
        }
        Err(e) => Err(Box::from(e)),
    }
}
