#
# Cookbook Name:: cloudfoundry-vblob-service
# Attributes:: node
#
# Copyright 2012, Innovation Factory
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Log level for the vblob service node.
default['cloudfoundry_vblob_service']['node']['log_level'] = "info"

# Unique instance index.
default['cloudfoundry_vblob_service']['node']['index'] = 0

# Maximum number of service instances for this node.
default['cloudfoundry_vblob_service']['node']['capacity'] = 50

# Maximum memory
default['cloudfoundry_vblob_service']['node']['max_memory'] = "128"

# Range of ports assigned to service instances on this node.
default['cloudfoundry_vblob_service']['node']['port_range']['first'] = 45001
default['cloudfoundry_vblob_service']['node']['port_range']['last'] = 55000

default['cloudfoundry_vblob_service']['node']['op_time_limit'] = 6

default['cloudfoundry_vblob_service']['node']['default_version'] = "0.51"

default['cloudfoundry_vblob_service']['node']['vblob_timeout'] = '3'
default['cloudfoundry_vblob_service']['node']['vblob_start_timeout'] = '10'
default['cloudfoundry_vblob_service']['node']['vblob_auth'] = 'disabled'
default['cloudfoundry_vblob_service']['node']['vblob_quota'] = '2147483647'
default['cloudfoundry_vblob_service']['node']['vblob_obj_limit'] = '32768'



