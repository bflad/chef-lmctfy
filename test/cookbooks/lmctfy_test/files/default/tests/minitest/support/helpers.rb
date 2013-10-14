module Helpers
  module LmctfyTest
    require 'chef/mixin/shell_out'
    require 'sys/proctable'
    include Chef::Mixin::ShellOut
    include Helpers::Lmctfy
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources

  end
end
