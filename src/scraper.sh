#!/bin/sh
country='Bangladesh'
mkdir proxylist anonymous-proxylist && \
curl https://raw.githubusercontent.com/monosans/proxy-list/main/proxies_geolocation/socks4.txt | grep $country | grep -Po '\d+.\d+.\d+.\d+[:]\d+' >> proxylist/socks4.txt
curl https://raw.githubusercontent.com/monosans/proxy-list/main/proxies_geolocation/socks5.txt | grep $country | grep -Po '\d+.\d+.\d+.\d+[:]\d+' >> proxylist/socks5.txt
curl https://raw.githubusercontent.com/monosans/proxy-list/main/proxies_geolocation/http.txt | grep $country | grep -Po '\d+.\d+.\d+.\d+[:]\d+' >> proxylist/http.txt
curl https://raw.githubusercontent.com/monosans/proxy-list/main/proxies_geolocation_anonymous/socks4.txt | grep $country | grep -Po '\d+.\d+.\d+.\d+[:]\d+' >> anonymous-proxylist/socks4.txt
curl https://raw.githubusercontent.com/monosans/proxy-list/main/proxies_geolocation_anonymous/socks5.txt | grep $country | grep -Po '\d+.\d+.\d+.\d+[:]\d+' >> anonymous-proxylist/socks5.txt
curl https://raw.githubusercontent.com/monosans/proxy-list/main/proxies_geolocation_anonymous/http.txt | grep $country | grep -Po '\d+.\d+.\d+.\d+[:]\d+' >> anonymous-proxylist/http.txt