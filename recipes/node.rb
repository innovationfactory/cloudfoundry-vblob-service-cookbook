#
# Cookbook Name:: cloudfoundry-vblob-service
# Recipe:: node
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

include_recipe "cloudfoundry-vblob-service::vblob"

node.default['cloudfoundry_vblob_service']['node']['base_dir'] = File.join(node['cloudfoundry_common']['services_dir'], "vblob")
node.default['cloudfoundry_vblob_service']['node']['db_logs_dir'] = File.join(node['cloudfoundry_common']['log_dir'], "vblob")
node.default['cloudfoundry_vblob_service']['node']['instances_dir'] = "#{node['cloudfoundry_vblob_service']['node']['base_dir']}/instances"

# node.override['vblob']['dbpath'] = node['cloudfoundry_vblob_service']['node']['instances_dir']


%w[sqlite3 libsqlite3-ruby libsqlite3-dev].each do |p|
  package p
end

%w[base_dir db_logs_dir instances_dir].each do |d|
  directory node['cloudfoundry_vblob_service']['node'][d] do
    owner node['cloudfoundry_common']['user']
    mode  "0755"
  end
end

cloudfoundry_service_component "vblob_node" do
  service_name  "vblob"
  action        [:create, :enable]
end
