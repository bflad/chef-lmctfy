include_recipe "control_groups"
include_recipe "gflags"
include_recipe "protobuf"
include_recipe "re2"

include_recipe "lmctfy::#{node['lmctfy']['install_type']}"
