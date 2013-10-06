module Helpers
  module LmctfyTest
    require 'chef/mixin/shell_out'
    include Chef::Mixin::ShellOut
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources

    def container_exists?(image,command)
      dps = shell_out("lmctfy list")
      dps.stdout.include?(command)
    end

    def container_running?(image,command)
      dps = shell_out("lmctfy list")
      dps.stdout.each_line do |dps_line|
        return true if dps_line.include?(command) && dps_line.include?("Up")
      end
      false
    end

  end
end
