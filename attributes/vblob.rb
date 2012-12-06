#
# Cookbook Name:: cloudfoundry-vblob-service
# Attributes:: vblob
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

default['cloudfoundry_vblob_service']['vblob']['nodejs']['version'] = '0.6.10'
default['cloudfoundry_vblob_service']['vblob']['npm']['version'] = '1.1.68'
default['cloudfoundry_vblob_service']['vblob']['reference'] = 'a12a88fa0c075eb94ba925abc902c97ca995213c'

default['cloudfoundry_vblob_service']['vblob']['repo'] = 'https://github.com/cloudfoundry/vblob.git'
default['cloudfoundry_vblob_service']['vblob']['path'] = '/usr/local/vblob'

