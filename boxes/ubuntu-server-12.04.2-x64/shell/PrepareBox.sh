#Box preparation
# ensure the date/time is synced
sudo ntpdate us.pool.ntp.org

# shut down firewall permanently
sudo iptables-save
sudo ufw disable
sudo ufw status

# Set the hostname to puppet
# sudo vim /etc/hosts (must add puppet to 127.0.0.1)
sudo hostname puppet
sudo service networking stop
sudo service networking start
