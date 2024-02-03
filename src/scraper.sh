#!/bin/sh
mkdir proxylist anonymous-proxylist && \

monosans_json=$(curl -s "https://raw.githubusercontent.com/monosans/proxy-list/main/proxies.json")

echo "$monosans_json" | jq -r '.[] | select(.geolocation.country.iso_code == "BD") | "\(.host):\(.port)"' | while read -r line; do
    protocol=$(echo "$monosans_json" | jq -r --arg host_port "$line" '.[] | select("\(.host):\(.port)" == $host_port) | .protocol')
    case $protocol in
        http)
            echo "$line" >> proxylist/http.txt
            ;;
        socks4)
            echo "$line" >> proxylist/socks4.txt
            ;;
        socks5)
            echo "$line" >> proxylist/socks5.txt
            ;;
        *)
            echo "$line" >> proxylist/unknown.txt
            ;;
    esac
done