# encoding: utf-8
require File.expand_path('../support/helpers', __FILE__)

describe_recipe 'lmctfy_test::container_lwrp_test' do
  include Helpers::LmctfyTest

  it 'has create action' do
    assert container_exists?('create')
  end

  it 'has run action' do
    assert container_exists?('run')
    assert container_command_running?('run', 'sleep 9999')
    assert container_command_count('run', 'sleep 9999').must_equal 1
  end

  it 'has killall action' do
    assert container_exists?('killall')
    refute container_command_running?('killall', 'sleep 9999')
  end

  it 'has destroy action' do
    refute container_exists?('destroy')
  end

  it 'has destroy action after run action' do
    refute container_exists?('destroy_after_run')
    refute container_command_running?('destroy_after_run', 'sleep 9999')
  end
end
