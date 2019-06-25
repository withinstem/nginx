reroute() {
  local dst="$1"
  local src="$2"
  local iface="eth0"
  local port="$(docker ps -f name="${basename}" -f status=running --format '{{.Ports}}' | head -n 1 | sed -E "s/.*:([0-9]+)->${dst}.*/\1/")"
  [[ -z "${port}" ]] && port="${src}"
  local line="$(sudo iptables -t nat -v -L --line-numbers | grep "DEPLOY ${dst}" | cut -d ' ' -f 1)"

  sudo iptables -t nat -R PREROUTING ${line} -i ${iface} -p tcp -m tcp --dport ${dst} -m comment --comment "DEPLOY ${dst}" -j REDIRECT --to-ports ${port}
}
