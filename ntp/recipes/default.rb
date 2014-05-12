# Ernest Kugel, May 2014
#
# NTP server configuration

# Install NTP configuration file
cookbook_file "/etc/ntp.conf" do
  source "ntp.conf"
  owner "root"
  group "root"
  mode 0644
end

# Enable and restart NTP service
service "ntpd" do
  action :enable
  action :restart
end
