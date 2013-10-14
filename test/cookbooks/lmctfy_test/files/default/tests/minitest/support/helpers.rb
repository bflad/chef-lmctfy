# encoding: utf-8
# Helpers module
module Helpers
  # Helpers::LmctfyTest
  module LmctfyTest
    require 'chef/mixin/shell_out'
    include Chef::Mixin::ShellOut
    include Helpers::Lmctfy
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources
  end
end
