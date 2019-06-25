# Files and directories

Detailed description of files and directories in this project.

## conf/

Configuration files.

### conf.d/

Config includes reusable across sites.

### html/

Static files for default root.

### sites-available/

Sites available on server.

---

[.htpasswd](conf/.htpasswd)  
Username and encrypted password for basic auth. Default is `admin`/`admin`.  
Change it with `htpasswd conf/.htpasswd admin`.

[docker.cfg](conf/docker.cfg)  
Configuration of [ops-docker](https://github.com/ops-tools/ops-docker).

[nginx.conf](conf/nginx.conf)  
Nginx main configuration file.

[sites-enabled.conf](conf/sites-enabled.conf)  
Enabled sites list.

## doc/

Documentation. You are reading it.

## scripts/
 
Scripts to rule the project.

* [start](scripts/start) - Start docker image locally.
* [rollout](scripts/rollout) - Deploy and starts docker images to remote host.
* [rollback](scripts/rollback) - Start previous containers.

## tools/

Utility tools. Contains [ops-docker](https://github.com/ops-tools/ops-docker) submodule.

## root

* [.dockerignore](.dockerignore) - Reverse list of ignored paths for docker.
* [.gitmodules](.gitmodules) - Git modules.
* [Dockerfile](Dockerfile) - Docker image build instructions.
* [LICENSE](LICENSE) - Explicit permission to do anything.
* [README.md](README.md) - Documentation entry.
