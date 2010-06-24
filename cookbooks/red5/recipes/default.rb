tarball = node[:red5][:tarball]

execute "wget" do
  cwd "/tmp"
  command "wget #{node[:red5][:tarball_url]}"
  creates "/tmp/#{tarball}"
  action :run
end

execute "tar" do
  user node[:red5][:user]
  group node[:red5][:group]

  installation_dir = node[:red5][:installation_dir]
  cwd installation_dir
  command "tar zxf /tmp/#{tarball}"
  creates installation_dir + "/" + node[:red5][:dirname]
  action :run
end
