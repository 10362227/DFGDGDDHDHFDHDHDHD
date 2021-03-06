wget https://raw.githubusercontent.com/p1956/DFGDGDDHDHFDHDHDHD/master/Aria2%2BAriaNG%2BKodExplorer_Install.sh
chmod +x Aria2+AriaNG+KodExplorer_Install.sh
./Aria2+AriaNG+KodExplorer_Install.sh

cat > /etc/nginx/conf.d/default.conf <<EOF
server {
    listen       8081;
    server_name  localhost;

    #charset koi8-r;
    #access_log  /var/log/nginx/host.access.log  main;

    location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;
    }

    #error_page  404              /404.html;

    # redirect server error pages to the static page /50x.html
    #
    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }

    # proxy the PHP scripts to Apache listening on 127.0.0.1:80
    #
    #location ~ \.php$ {
    #    proxy_pass   http://127.0.0.1;
    #}

    # pass the PHP scripts to FastCGI server listening on 127.0.0.1:9000
    #
    #location ~ \.php$ {
    #    root           html;
    #    fastcgi_pass   127.0.0.1:9000;
    #    fastcgi_index  index.php;
    #    fastcgi_param  SCRIPT_FILENAME  /scripts$fastcgi_script_name;
    #    include        fastcgi_params;

EOF

cat > /etc/nginx/conf.d/kodexplorer.conf <<EOF
server {
    listen       80;
    server_name  362227.space;

    #charset koi8-r;
    #access_log  /var/log/nginx/host.access.log  main;

    location / {
        root   /usr/share/nginx/kodexplorer;
        index  index.html index.htm index.php;
    }

    location ~ \.php$ {
        root           /usr/share/nginx/kodexplorer;
        fastcgi_pass   127.0.0.1:9000;
        fastcgi_index  index.php;
        fastcgi_param  SCRIPT_FILENAME  /usr/share/nginx/kodexplorer$fastcgi_script_name;
        include        fastcgi_params;
    }

}

EOF

cat /usr/share/nginx/kodexplorer/a.sh <<EOF 
> #!/bin/sh


chmod -R 777 /usr/share/nginx/kodexplorer/data/User/admin/home/
chmod -R 777 /usr/share/nginx/html/
chmod -R 777 /usr/share/nginx/kodexplorer/
rm -rf /var/spool/mail/
rm -rf /usr/share/nginx/kodexplorer/data/User/admin/data/temp/*
rm -rf /var/log/php-fpm/*
rm -rf etc/nginx/logs

wget --header="Cookie:_rails_session=kg8kDMW%2BVZIOTI6CxntCKrqXDKtVdjuenJiW%2BO54j1l0qrrjSeNOztNNU0VyV1pakr38AkOMlbKMgTC0E9Q6iV7cvPXDeGTiUIeyFrhMsCM2OdJo7fzE49xz9O51i5O8fkRrC%2Bb7wvpNrj8ne2kU918XjVtReRO1DhnG%2BD13bbLcZmHJJLq5uMO1cPdd7F82riTOh78EpAOZfPXaO%2F1OrQRBTifAODCuBQ1lw2wU2EDbPfZtDnuxMrlcoqW6t1CrIKTH%2BHyHeF7shFG4ATZpDhwfEsKlnRoj%2Bw2e2gY1tfXOmMxtvtH3O6j8aV6H4xtd%2FJFzvYyT39iM8CqBBF120qQT%2FbjczCGpXPxK72WLE5W3dLv4UFiZiMZVhtEHWTcFfT8roZClW67QxP%2B48E3r5ywW7NdHBRia5LxwDJVh0BJTRcyVjzsXKaODVUMGRSuGXeXnPgiHkGvSLO5jynwiFIYr70Ab63lwXae%2FI9IfdzmiC8MA4EfxSCgcW8OgRka9tzZt8JlXiBCoYrT80xO5TVhsyiuF2k92qyIPdboa%2F8SSiQtich8sSb2OPqh8c0QM5VHO0id6clTPxKAN5zs%3D--VwgHy3uR6%2Balr2cb--cpRLJ2uV1lFTONyjR9apjA%3D%3D" https://huginn-103622272.herokuapp.com/scenarios/4/export.json -O /usr/share/nginx/kodexplorer/rss/huginn-103622272.json

wget --header="Cookie:_rails_session=Y9kMVIFCAYna5qDBdvq3w4Vcrt%2BiWJdBYGz%2FgmPC4n7hH%2F%2Fzc8ZtbNf8ug6NAg3xPA7%2FTGLpbbNU6s2UeXB8xe%2BP8CHOdEO9u%2Be40t1XHdYDFYBZftYZAh1M3lCAsI6NFytQhAEyU8hqdJUhaDSaanacyoFM8g957zau%2Flg8fMjkOrZWlUVIvTrFFMJAu8l89BtLlTKenAHpVw%2FntfNp0Kufqkarh79stTtZ--wFbruVSJpzTMtZXM--uZnPKaqZeXo32FKWoKUmNQ%3D%3D" https://huginn103622275.herokuapp.com/scenarios/8/export.json -O /usr/share/nginx/kodexplorer/rss/huginn103622275.json 

wget --header="Cookie:_rails_session=U4HvIyxVS8jt%2Ba0QpY9jSgy1CvFXw5zCcQLfYA1LjcIiALKLR%2FOCBsQuTMwXx%2B8cx9fjLXlhRvc3DFg3G9RNzA48jw6rHl4DETbAOTT9sYXbOHGCQsu7rwZWxwrJt1kFUWakSYDszpcUIEyQ6K301dm%2BB%2FmypJeeHWsWNeykBMroc%2B6%2FpU%2Bq0AwXYMX84NrQ%2F9Fut7olhXvLNkUaemiO%2B%2F9pGw05wXokhwe8--%2BV0xjBHt46hnAQgg--nJSYD%2FM73K9DcrWqeWRBHg%3D%3D" https://huginn103622274.herokuapp.com/scenarios/43/export.json -O /usr/share/nginx/kodexplorer/rss/huginn103622274.json 

wget --header="Cookie:_rails_session=p0RYTfw3O9EvDDEpQgf99Yeq%2BuQk%2FY9kxMV8FYbP8Cfa%2B4gXSVytUdYOrC6mhW3Yg3Lxdpeya7afBwHaevzn%2F3lRCmZE94j1cuwjaFW7mRfixmIfzPPMqdoN0nrjhEa6AVfB8RXmRu40jqHJZa9tH8as4u7OTaixrqtlOMNFajXLjX1OCYJPt0mTZhbIrfpBirfcEUXqaGN9YnkKDB1qJdf%2F7%2FWlkt%2Bbsnzg--OytPsn%2BYAsuNloNn--rOj2RMkCUP7yf75KSgQjVA%3D%3D" https://huginn3622274.herokuapp.com/scenarios/4/export.json -O /usr/share/nginx/kodexplorer/rss/huginn3622274.json 

EOF


cd /var/spool/cron
touch hello.sh
cat > /var/spool/cron/hello.sh <<EOF
chmod -R 777 /usr/share/nginx/kodexplorer/data/User/admin/home/
EOF
cat > /var/spool/cron/root <<EOF
46 0 * * * "/root/.acme.sh"/acme.sh --cron --home "/root/.acme.sh" > /dev/null
* * * * * /usr/share/nginx/kodexplorer/a.sh
* * * * * sleep 30; /usr/share/nginx/kodexplorer/a.sh
0 2 * * * rclone copy /usr/share/nginx/kodexplorer/rss/ 10362227:backup --transfers=16
EOF


wget https://raw.githubusercontent.com/p1956/DFGDGDDHDHFDHDHDHD/master/ytbtest10.py -O /usr/share/nginx/kodexplorer/ytbtest10.py
wget https://raw.githubusercontent.com/p1956/DFGDGDDHDHFDHDHDHD/master/ytbtest10SW.py -O /usr/share/nginx/kodexplorer/ytbtest10SW.py

#0.安装goflyway
wget -N --no-check-certificate https://github.com/p1956/DFGDGDDHDHFDHDHDHD/raw/master/goflyway.sh && chmod +x goflyway.sh && bash goflyway.sh

#1.安装transmission 
wget -N --no-check-certificate https://raw.githubusercontent.com/91yun/91yuncode/master/transmission-centos.sh && bash transmission-centos.sh
wget https://github.com/ronggang/transmission-web-control/raw/master/release/install-tr-control-cn.sh --no-check-certificate && bash install-tr-control-cn.sh
##（注：如要更新新版，执行此命令即可）
##开机启动：
chkconfig transmission-daemon on

cat > /var/lib/transmission/.config/transmission-daemon/settings.json <<EOF
{
    "alt-speed-down": 50,
    "alt-speed-enabled": false,
    "alt-speed-time-begin": 540,
    "alt-speed-time-day": 127,
    "alt-speed-time-enabled": false,
    "alt-speed-time-end": 1020,
    "alt-speed-up": 50,
    "bind-address-ipv4": "0.0.0.0",
    "bind-address-ipv6": "::",
    "blocklist-enabled": false,
    "blocklist-url": "http://www.example.com/blocklist",
    "cache-size-mb": 4,
    "dht-enabled": true,
    "download-dir": "/var/lib/transmission/Downloads",
    "download-queue-enabled": true,
    "download-queue-size": 5,
    "encryption": 1,
    "idle-seeding-limit": 30,
    "idle-seeding-limit-enabled": false,
    "incomplete-dir": "/var/lib/transmission/Downloads",
    "incomplete-dir-enabled": false,
    "lpd-enabled": false,
    "message-level": 1,
    "peer-congestion-algorithm": "",
    "peer-id-ttl-hours": 6,
    "peer-limit-global": 200,
    "peer-limit-per-torrent": 50,
    "peer-port": 51413,
    "peer-port-random-high": 65535,
    "peer-port-random-low": 49152,
    "peer-port-random-on-start": false,
    "peer-socket-tos": "default",
    "pex-enabled": true,
    "port-forwarding-enabled": true,
    "preallocation": 1,
    "prefetch-enabled": true,
    "queue-stalled-enabled": true,
    "queue-stalled-minutes": 30,
    "ratio-limit": 2,
    "ratio-limit-enabled": false,
    "rename-partial-files": true,
    "rpc-authentication-required": true,
    "rpc-bind-address": "0.0.0.0",
    "rpc-enabled": true,
    "rpc-host-whitelist": "",
    "rpc-host-whitelist-enabled": true,
    "rpc-password": "{46d97d59176b56259025012772d5d4ad36d03892saLCczwE",
    "rpc-port": 9091,
    "rpc-url": "/transmission/",
    "rpc-username": "",
    "rpc-whitelist": "127.0.0.1",
    "rpc-whitelist-enabled": false,
    "scrape-paused-torrents-enabled": true,
    "script-torrent-done-enabled": false,
    "script-torrent-done-filename": "",
    "seed-queue-enabled": false,
    "seed-queue-size": 10,
    "speed-limit-down": 100,
    "speed-limit-down-enabled": false,
    "speed-limit-up": 100,
    "speed-limit-up-enabled": false,
    "start-added-torrents": true,
    "trash-original-torrent-files": false,
    "umask": 18,
    "upload-slots-per-torrent": 14,
    "utp-enabled": true
}
EOF
systemctl stop transmission-daemon


# 安装FFMPEG
cd ~
wget --no-check-certificate https://www.johnvansickle.com/ffmpeg/old-releases/ffmpeg-4.0.3-64bit-static.tar.xz
tar -xJf ffmpeg-4.0.3-64bit-static.tar.xz
cd ffmpeg-4.0.3-64bit-static
cp ffmpeg /usr/bin/ffmpeg
cd ~
ffmpeg -version
if [ $? -eq 0 ];then
    echo -e "${green} FFMPEG安装成功 ${font}"
else 
    echo -e "${red} FFMPEG安装失败 ${font}"
    exit 1
fi


#安装mediainfo
yum -y install mediainfo

#安装youtube-dl
wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
chmod a+rx /usr/local/bin/youtube-dl 

#安装SSR
wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocksR.sh
chmod +x shadowsocksR.sh
./shadowsocksR.sh 2>&1 | tee shadowsocksR.log

#安装Pip： 
yum -y install python-pip 

iptables -F
iptables -F -t nat
iptables -X
iptables -X -t nat

#安装v2ray
bash -c "$(curl -fsSL https://raw.githubusercontent.com/p1956/DFGDGDDHDHFDHDHDHD/master/V2ray.fun.sh)"

#安装streamlink
pip install --upgrade streamlink

#安装psmisc
yum -y install psmisc

sudo pip install requests
easy_install beautifulsoup4
pip install beautifulsoup4
easy_install PyRSS2Gen
pip install PyRSS2Gen
easy_install beautifulsoup
pip install beautifulsoup

#安装googledriver 
wget https://raw.githubusercontent.com/circulosmeos/gdown.pl/master/gdown.pl
chmod +x gdown.pl

chmod -R 777 /usr/share/nginx/kodexplorer/data/User/admin/home/
chmod -R 777 /usr/share/nginx/html

#安装git
yum install git -y

#安装yarn
curl --silent --location https://rpm.nodesource.com/setup_10.x | sudo bash -
sudo yum install nodejs -y
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg
sudo yum install yarn -y

#安装rclone
yum install fuse -y
curl https://rclone.org/install.sh | sudo bash
