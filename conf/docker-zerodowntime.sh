source conf/reroute.sh

basename="nginx"
images="stem.local/${basename}"
networks="stem"
strategy="start-stop"
# remotes="deploy@remote.host:/home/deploy"
http_port=8080
create_options=(
  "-p ${http_port}:80"
  "-v ${basename}-www:/var/www/"
)
post_start() {
  reroute 80 ${http_port}
}
