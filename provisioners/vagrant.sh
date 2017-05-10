cat <<EOF > /etc/ssh/sshd_config
Port 22
Protocol 2
ListenAddress 0.0.0.0
PasswordAuthentication yes
EOF
