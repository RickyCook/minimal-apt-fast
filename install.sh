#!/bin/sh -e
[ -z "$NO_APT" -a -z "$NO_APT_UPDATE" ]  && apt-get update
[ -z "$NO_APT" -a -z "$NO_APT_INSTALL" ] && apt-get install -y aria2 lockfile-progs

aria2c -d /usr/local/bin "https://raw.githubusercontent.com/ilikenwf/apt-fast/$APT_FAST_VERSION/apt-fast"
chmod +x /usr/local/bin/apt-fast

cat > /etc/apt-fast.conf <<-END
	DOWNLOADBEFORE=true
	_DOWNLOADER='aria2c -c -j 5'
END
