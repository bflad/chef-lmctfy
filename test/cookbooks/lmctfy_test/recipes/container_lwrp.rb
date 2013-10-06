lmctfy_container "busybox" do
  command "sleep 1111"
  detach true
end

lmctfy_container "busybox" do
  command "sleep 2222"
  detach true
end

lmctfy_container "busybox" do
  command "sleep 3333"
  detach true
end

lmctfy_container "busybox" do
  command "sleep 4444"
  detach true
end

lmctfy_container "busybox" do
  command "sleep 5555"
  detach true
end

lmctfy_container "busybox" do
  command "sleep 2222"
  action :restart
end

lmctfy_container "busybox" do
  command "sleep 3333"
  action :stop
end

lmctfy_container "busybox" do
  command "sleep 4444"
  action :stop
end

lmctfy_container "busybox" do
  command "sleep 4444"
  action :start
end

lmctfy_container "busybox" do
  command "sleep 5555"
  action :remove
end
