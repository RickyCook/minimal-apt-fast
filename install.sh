#!/bin/sh -e
aria2c -d /usr/local/bin "https://github.com/ilikenwf/apt-fast/blob/$APT_FAST_VERSION/apt-fast"
chmod +x /usr/local/bin/apt-fast

cat > /etc/apt-fast.conf <<-END
	DOWNLOADBEFORE=true
	_DOWNLOADER='aria2c -c -j 5'
END
