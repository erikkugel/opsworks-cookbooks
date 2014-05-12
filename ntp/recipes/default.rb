# Ernest Kugel, May 2014
#
# NTP server configuration

# Install NTP configuration file
remote_file "/etc/ntp.conf" do
  action :create
  source "ntp.conf"
  mode 0644
  owner root
  group root
end

# Enable and restart NTP service
service "ntpd" do
  action :enable
  action :restart
end
