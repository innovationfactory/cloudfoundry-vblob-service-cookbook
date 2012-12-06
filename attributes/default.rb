#
# Cookbook Name:: cloudfoundry-vblob-service
# Attributes:: default
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

include_attribute "cloudfoundry-common"

default['cloudfoundry_vblob_service']['supported_versions'] = {
  "0.51" => "0.51"
}
default['cloudfoundry_vblob_service']['version_aliases'] = {
  "current" => "0.19"
}
