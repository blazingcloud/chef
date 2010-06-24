url = 'http://www.red5.org/downloads/0_9/red5-0.9.1.tar.gz'

set_unless[:red5][:installation_dir] = "/home/ubuntu"
set_unless[:red5][:tarball_url] = url
set_unless[:red5][:tarball] = File.basename(url)
set_unless[:red5][:dirname] = "red5-0.9.1"
set_unless[:red5][:user] = "ubuntu"
set_unless[:red5][:group] = "ubuntu"

