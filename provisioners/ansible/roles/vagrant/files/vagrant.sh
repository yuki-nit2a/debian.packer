- shell: 

- shell: echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant

echo 'UseDNS no' >> /etc/ssh/sshd_config

date > /etc/vagrant_box_build_time

mkdir -pm 700 /home/vagrant/.ssh
curl -Lo /home/vagrant/.ssh/authorized_keys 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

echo 'Welcome to Vagrant-world!' > /var/run/motd

apt-get -y install nfs-common

cat <<EOF > /etc/default/grub
GRUB_DEFAULT=0
GRUB_TIMEOUT=0
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="quiet"
GRUB_CMDLINE_LINUX="debian-installer=en_US"
EOF

update-grub
