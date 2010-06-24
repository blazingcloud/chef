tarball = node[:openfire][:tarball]

execute "wget" do
  cwd "/tmp"
  command "wget #{node[:openfire][:tarball_url]}"
  creates "/tmp/#{tarball}"
  action :run
end

execute "tar" do
  user node[:openfire][:user]
  group node[:openfire][:group]

  installation_dir = node[:openfire][:installation_dir]
  cwd installation_dir
  command "tar zxf /tmp/#{tarball}"
  creates installation_dir + "/" + node[:openfire][:dirname]
  action :run
end
