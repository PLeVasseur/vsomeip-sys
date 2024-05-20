#pragma once

#include <memory>
#include "vsomeip/vsomeip.hpp"  // Adjust the path as necessary to include the runtime type

class ApplicationWrapper {
public:
    explicit ApplicationWrapper(std::shared_ptr<vsomeip_v3::application> ptr) : ptr_(std::move(ptr)) {}

    vsomeip_v3::application* get_mut() const {
        return ptr_.get();
    }

private:
    std::shared_ptr<vsomeip_v3::application> ptr_;
};

std::unique_ptr<ApplicationWrapper> make_application_wrapper(std::shared_ptr<vsomeip_v3::application> ptr) {
    return std::make_unique<ApplicationWrapper>(std::move(ptr));
}
