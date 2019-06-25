# Nginx stem

NGINX is a free, open-source, high-performance HTTP server and reverse proxy, as well as an IMAP/POP3 proxy server.[\*](http://nginx.org/)

## Build

Builds from the official [nginx](https://hub.docker.com/_/nginx/) docker image. Sticks to a current version.

## Configuration

Configuration based on various production systems configs normalized to sane defaults.

### Base conf/ structure

* [conf.d/](conf/conf.d/) - Config includes reusable across sites.
* [html/](conf/html/) - Static files for default root.
* [sites-available/](conf/sites-available/) - Sites available on server.
* [nginx.conf](conf/nginx.conf) - Nginx main config.
* [sites-enabled.conf](conf/sites-enabled.conf) - Enabled sites list.

See detailed description of [files and directories](doc/files.md).

## Deployment

Deploy with docker using embedded [ops-docker](https://github.com/ops-tools/ops-docker) tool.

Scripts available:

* `scripts/start` for launching local instance.
* `scripts/rollout` for rolling out to remote host and `scripts/rollback` for rolling back.

## License

[The Unlicense](LICENSE).
