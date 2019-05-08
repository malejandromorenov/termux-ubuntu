#
# Cloning sources termux-ubuntu
#
JAILS=~/jails/ubuntu

if [ -d $JAILS ]
then
	echo "Direktori $JAILS sudah ada.";
else
	echo "Membuat direktori $JAILS";
	mkdir -p $JAILS
fi

# Masuk ke direktori jails/ubuntu
cd $JAILS

# Mengunduh script shell untuk install ubuntu
wget https://raw.githubusercontent.com/Neo-Oli/termux-ubuntu/master/ubuntu.sh

# Mengubah dan menjalankan
chmod +x ./ubuntu.sh
./ubuntu.sh

# Memindahkan resolv.conf