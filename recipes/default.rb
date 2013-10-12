include_recipe "control_groups"
include_recipe "gflags::cpp"
include_recipe "protobuf::cpp"
include_recipe "re2"

include_recipe "lmctfy::#{node['lmctfy']['install_type']}"
