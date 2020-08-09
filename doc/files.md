# Files and directories

A detailed description of files and directories in this project.

## conf/

[docker.cfg](conf/docker.cfg)  
Configuration of [ops-docker](https://github.com/ops-tools/ops-docker).

## nginx/

Nginx configuration files.

### conf.d/

Config includes reusable across the sites.

### sites-available/

Sites available on the server.

---

[.htpasswd](conf/.htpasswd)  
Username and encrypted password for basic auth. Default is `admin`/`admin`.  
Change it with `htpasswd conf/.htpasswd admin`.

[nginx.conf](conf/nginx.conf)  
Nginx main configuration file.

[sites-enabled.conf](conf/sites-enabled.conf)  
Enabled sites list.

## html/

Static files for a default root.

## doc/

Documentation. You are reading it.

## scripts/
 
Scripts to rule the project.

* [start](scripts/start) - Assemble and launch docker image locally.
* [rollout](scripts/rollout) - Deploy and launch docker images to remote host.
* [rollback](scripts/rollback) - Launch previous container.

## tools/

Utility tools. Contains [ops-docker](https://github.com/ops-tools/ops-docker) and [ops-revision](https://github.com/ops-tools/ops-docker) submodules.

## root

* [.dockerignore](.dockerignore) - Reverse list of ignored paths for docker.
* [.gitmodules](.gitmodules) - Git modules.
* [Dockerfile](Dockerfile) - Docker image build instructions.
* [LICENSE](LICENSE) - Explicit permission to do anything.
* [README.md](README.md) - Documentation entry.
