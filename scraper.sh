curl https://raw.githubusercontent.com/monosans/proxy-list/main/proxies_geolocation/socks4.txt | grep Bangladesh | grep -Po '\d+.\d+.\d+.\d+[:]\d+' >> BD_socks4.txt
curl https://raw.githubusercontent.com/monosans/proxy-list/main/proxies_geolocation/socks5.txt | grep Bangladesh | grep -Po '\d+.\d+.\d+.\d+[:]\d+' >> BD_socks5.txt
curl https://raw.githubusercontent.com/monosans/proxy-list/main/proxies_geolocation/http.txt | grep Bangladesh | grep -Po '\d+.\d+.\d+.\d+[:]\d+' >> BD_http.txt
