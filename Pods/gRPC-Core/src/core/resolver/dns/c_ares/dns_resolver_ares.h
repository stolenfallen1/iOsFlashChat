// Copyright 2022 The gRPC Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
#ifndef GRPC_SRC_CORE_RESOLVER_DNS_C_ARES_DNS_RESOLVER_ARES_H
#define GRPC_SRC_CORE_RESOLVER_DNS_C_ARES_DNS_RESOLVER_ARES_H

#include <grpc/support/port_platform.h>

#include "absl/strings/string_view.h"
#include "src/core/config/core_configuration.h"

namespace grpc_core {

bool ShouldUseAresDnsResolver(absl::string_view resolver_env);
void RegisterAresDnsResolver(CoreConfiguration::Builder*);

}  // namespace grpc_core

#endif  // GRPC_SRC_CORE_RESOLVER_DNS_C_ARES_DNS_RESOLVER_ARES_H
