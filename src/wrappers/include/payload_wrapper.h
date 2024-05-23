#pragma once

#include <memory>
#include <iostream>
#include "vsomeip/vsomeip.hpp"  // Adjust the path as necessary to include the runtime type

class PayloadWrapper {
public:
    explicit PayloadWrapper(std::shared_ptr<vsomeip_v3::payload> ptr) : ptr_(std::move(ptr)) {}

    vsomeip_v3::payload* get_mut() const {
        return ptr_.get();
    }

    std::shared_ptr<vsomeip_v3::payload> get_shared_ptr() const {
        return ptr_;
    }

private:
    std::shared_ptr<vsomeip_v3::payload> ptr_;
};

std::unique_ptr<PayloadWrapper> make_payload_wrapper(std::shared_ptr<vsomeip_v3::payload> ptr) {
    return std::make_unique<PayloadWrapper>(std::move(ptr));
}
