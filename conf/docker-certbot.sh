basename="nginx"
images="stem.local/${basename}"
networks="stem"
# remotes="deploy@remote.host:/home/deploy"
create_options=(
  "-p 80:80"
  # "-p 443:443"
  "-v ${basename}-www:/var/www/"
  # "-v certbot-www:/var/lib/letsencrypt/"
  # "-v certbot-data:/etc/letsencrypt/"
)
