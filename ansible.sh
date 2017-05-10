cat <<EOF > /etc/apt/preferences.d/stable
Package: *
Pin: release a=stable
Pin-Priority: 700
EOF

cat <<EOF > /etc/apt/preferences.d/unstable
Package: *
Pin: release a=unstable
Pin-Priority: 90
EOF

cat <<EOF > /etc/apt/preferences.d/testing
Package: *
Pin: release a=testing
Pin-Priority: 80
EOF

cat <<EOF > /etc/apt/sources.list
deb http://cdn.debian.net/debian/ jessie main contrib non-free
deb http://cdn.debian.net/debian/ jessie-updates main contrib
deb http://security.debian.org/ jessie/updates main contrib non-free

deb http://cdn.debian.net/debian/ unstable main
EOF

apt-get update -y
apt-get install -y -t unstable ansible
mkdir -p $PACKER__ANSIBLE_STAGING_DIR
