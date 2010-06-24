tarball = "openfire_3_6_4.tar.gz"

set_unless[:openfire][:installation_dir] = "/home/ubuntu"
set_unless[:openfire][:tarball_url] = "http://www.igniterealtime.org/downloadServlet?filename=openfire/#{tarball}"
set_unless[:openfire][:tarball] = tarball
set_unless[:openfire][:dirname] = "openfire" # directory name of extracted tarball
set_unless[:openfire][:user] = "ubuntu"
set_unless[:openfire][:group] = "ubuntu"

