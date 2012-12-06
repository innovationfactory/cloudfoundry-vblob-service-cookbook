#
# Cookbook Name:: cloudfoundry-vblob-service
# Recipe:: vblob
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

node.override['nodejs']['version'] = node['cloudfoundry_vblob_service']['vblob']['nodejs']['version']
node.override['nodejs']['npm'] = node['cloudfoundry_vblob_service']['vblob']['npm']['version']

include_recipe "nodejs::install_from_source"
include_recipe "nodejs::npm"

%w[express winston sax vows].each do |pkg|
  npm_package pkg
end

git node['cloudfoundry_vblob_service']['vblob']['path'] do
  repository node['cloudfoundry_vblob_service']['vblob']['repo']
  reference node['cloudfoundry_vblob_service']['vblob']['reference']
  user node['cloudfoundry_common']['user']
  action :sync
end

