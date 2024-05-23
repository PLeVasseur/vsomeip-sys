#pragma once

#include <functional>
#include <memory>

#include "vsomeip/vsomeip.hpp"  // Adjust the path as necessary to include the runtime type

void fake_availability_handler_fn(const vsomeip_v3::availability_handler_t &_handler) {

}

//void example_fn(vsomeip_v3::service_t, vsomeip_v3::instance_t, bool) {}
//
//vsomeip_v3::availability_handler_fn_ptr return_availability_handler() {
//    return example_fn;
//}

// Function to convert a function pointer to an availability_handler_t
//vsomeip_v3::availability_handler_t create_availability_handler(void (*func)(vsomeip_v3::service_t, vsomeip_v3::instance_t, bool)) {
//    return vsomeip_v3::availability_handler_t(func);
//}

// able to compile when no return type
//void create_availability_handler(void (*func)(vsomeip_v3::service_t, vsomeip_v3::instance_t, bool)) {
//
//}

//extern "C" void create_availability_handler(vsomeip_v3::availability_handler_t handler) {
//
//}

//std::unique_ptr<vsomeip_v3::availability_handler_t> create_availability_handler(void (*handler)(vsomeip_v3::service_t, vsomeip_v3::instance_t, bool)) {
//    return std::make_unique<vsomeip_v3::availability_handler_t>(handler);
//}

//struct AvailabilityHandlerWrapper {
//    availability_handler_t handler;
//
//    AvailabilityHandlerWrapper(void (*handler_fn)(vsomeip_v3::service_t, vsomeip_v3::instance_t, bool))
//        : handler(handler_fn) {}
//
//    void call(vsomeip_v3::service_t service, vsomeip_v3::instance_t instance, bool availability) {
//        handler(service, instance, availability);
//    }
//};
//
//extern "C" AvailabilityHandlerWrapper* create_availability_handler(void (*handler)(vsomeip_v3::service_t, vsomeip_v3::instance_t, bool)) {
//    return new AvailabilityHandlerWrapper(handler);
//}
//
//extern "C" void destroy_availability_handler(AvailabilityHandlerWrapper* wrapper) {
//    delete wrapper;
//}
//
//extern "C" void call_availability_handler(AvailabilityHandlerWrapper* wrapper, vsomeip_v3::service_t service, vsomeip_v3::instance_t instance, bool availability) {
//    wrapper->call(service, instance, availability);
//}