require 'chef/mixin/shell_out'
include Chef::Mixin::ShellOut
include Helpers::Lmctfy

def load_current_resource
  @current_resource = Chef::Resource::LmctfyContainer.new(new_resource)
  containers.each do |container|
    next unless container.include?(new_resource.container)
    @current_resource.id(container)
    @current_resource.processes(container_processes(@current_resource.id))
    break
  end
  @current_resource
end

action :create do
  unless @current_resource.id
    create_args = ''    
    if new_resource.config
      create_args += " -c #{new_resource.config}"
    else
      create_args += " \"#{new_resource.spec}\""
    end
    lr = shell_out("lmctfy create #{new_resource.container} #{create_args.strip}")
    new_resource.updated_by_last_action(true)
  end
end

action :destroy do
  destroy if @current_resource.id
  new_resource.updated_by_last_action(true)
end

action :killall do
  killall if @current_resource.id
  new_resource.updated_by_last_action(true)
end

action :run do
  unless @current_resource.id && running?
    run_args = ''
    run_args += ' -n' if new_resource.nowait
    lr = shell_out("lmctfy run #{run_args.strip} #{current_resource.id} \"#{new_resource.command}\"")
    new_resource.updated_by_last_action(true)
  end
end

def destroy
  shell_out("lmctfy destroy #{current_resource.id}")
end

def killall
  shell_out("lmctfy killall #{current_resource.id}")
end

def running?
  @current_resource.processes.each do |process|
    return true if process['command'] == @new_resource.command
  end
  false
end
