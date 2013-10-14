lmctfy_container 'create' do
  spec ''
end

lmctfy_container 'run' do
  command 'sleep 9999'
  nowait true
  spec ''
  action [:create, :run]
end

lmctfy_container 'killall' do
  command 'sleep 9999'
  nowait true
  spec ''
  action [:create, :run]
end

lmctfy_container 'killall' do
  action :killall
end

lmctfy_container 'destroy' do
  spec ''
  action :create
end

lmctfy_container 'destroy' do
  action :destroy
end

lmctfy_container 'destroy_after_run' do
  command 'sleep 9999'
  nowait true
  spec ''
  action [:create, :run]
end

lmctfy_container 'destroy_after_run' do
  action [:killall, :destroy]
end

lmctfy_container 'memory_100mb' do
  spec 'memory:{limit:100000000}'
end
