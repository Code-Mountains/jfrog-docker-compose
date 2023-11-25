### System Requirements
Before you install, please validate the system requirements provided here: https://service.jfrog.org/installer/System+Requirements  

### How to run
* `./config.sh` will provide you an interactive install or upgrade

### Default credentials
* Database name: xraydb
* Database user: xray
* Database password: password

### Default credentials
* Database name: artifactory
* Database user: artifactory
* Database password: password

### MORE DETAILS 
* For more details on installation scripts, refer: https://www.jfrog.com/confluence/display/JFROG/Installing+TrialEdition-Artifactory-Xray
* For troubleshooting, refer: https://service.jfrog.org/installer/Troubleshooting

# First Time Setup
```
$ sudo ./config.sh 


Beginning JFrog Platform Trial Pro X setup


Validating System requirements

Downloading JFrog xray and its dependencies (this may take several minutes)...

Installation Directory found in .env. Skipping prompt

Creating third party directories (if necessary)

Attempting to seed PostgreSQL. This may take some time.
psql (PostgreSQL) 13.10

Waiting for Postgres to get ready using the commands: "psql --host=localhost --port=5432 --version" & "psql --host=localhost --port=5432 -l"
.

Postgres is ready. Executing commands

Postgres setup is now complete

Successfully seeded PostgreSQL

Docker setup complete

Installation directory: [/root/.jfrog] contains data and configurations.

Use docker-compose commands to start the application. Once the application has started, it can be accessed at [http://127.0.0.1:8082]

Examples:
cd /home/sysadmin/Documents/code/artifactory/jfrog-docker-compose


Rabbitmq is a dependent service which needs to be started once after install. This needs to be running before start of xray services.

start rabbitmq:      docker-compose -p trial-prox-rabbitmq -f docker-compose-rabbitmq.yaml up -d
start postgresql:    docker-compose -p trial-prox-postgres -f docker-compose-postgres.yaml up -d
start:               docker-compose -p trial-prox up -d
stop:                docker-compose -p trial-prox down

NOTE: The compose file uses several environment variables from the .env file. Remember to run from within the [/home/sysadmin/Documents/code/artifactory/jfrog-docker-compose] folder

Done
```

# Docker Compose PostGres and RabbitMQ
```

$ docker-compose -p trial-prox-rabbitmq -f docker-compose-rabbitmq.yaml up -d
Creating network "trial-prox-rabbitmq_default" with the default driver
Pulling rabbitmq (releases-docker.jfrog.io/jfrog/xray-rabbitmq:3.11.9-management)...
3.11.9-management: Pulling from jfrog/xray-rabbitmq
7608715873ec: Pull complete
8147f1b064ec: Pull complete
b49348aba7cf: Pull complete
96fb4c28b2c1: Pull complete
626e07084b41: Pull complete
f63218e95551: Pull complete
ec66df5c883f: Pull complete
ed46dea04296: Pull complete
3f0e404c1d68: Pull complete
57315aaee690: Pull complete
b0805ae0878b: Pull complete
Digest: sha256:0b47a9574f62bf978a2d734753e98584da8f117db1452d16b7acd64e92bccc68
Status: Downloaded newer image for releases-docker.jfrog.io/jfrog/xray-rabbitmq:3.11.9-management
Creating xray_rabbitmq ... done


$ docker-compose -p trial-prox-postgres -f docker-compose-postgres.yaml up -d
Recreating postgresql ... done

```


# GPG Generate Key
```
$ gpg --generate-key

gpg (GnuPG) 2.2.27; Copyright (C) 2021 Free Software Foundation, Inc.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Note: Use "gpg --full-generate-key" for a full featured key generation dialog.

GnuPG needs to construct a user ID to identify your key.

Real name: codemountains
Email address: thecodemountains@gmail.com
You selected this USER-ID:
    "codemountains <thecodemountains@gmail.com>"

Change (N)ame, (E)mail, or (O)kay/(Q)uit? O
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
gpg: key 6D23EAA2D2557B0D marked as ultimately trusted
gpg: directory '/home/sysadmin/.gnupg/openpgp-revocs.d' created
gpg: revocation certificate stored as '/home/sysadmin/.gnupg/openpgp-revocs.d/F5B05CEB874FF2729D8267706D23EAA2D2557B0D.rev'
public and secret key created and signed.

pub   rsa3072 2023-11-24 [SC] [expires: 2025-11-23]
      F5B05CEB874FF2729D8267706D23EAA2D2557B0D
uid                      codemountains <thecodemountains@gmail.com>
sub   rsa3072 2023-11-24 [E] [expires: 2025-11-23]

```


# Using Key ID with pass
```
pass init D2557B0D

## OUTPUT:

$ pass init D2557B0D

mkdir: created directory '/home/sysadmin/.password-store/'
Password store initialized for D2557B0D

```

# Docker Info
```
$ docker info
Client: Docker Engine - Community
 Version:    24.0.7
 Context:    desktop-linux
 Debug Mode: false
 Plugins:
  buildx: Docker Buildx (Docker Inc.)
    Version:  v0.11.2-desktop.5
    Path:     /usr/lib/docker/cli-plugins/docker-buildx
  compose: Docker Compose (Docker Inc.)
    Version:  v2.23.0-desktop.1
    Path:     /usr/lib/docker/cli-plugins/docker-compose
  dev: Docker Dev Environments (Docker Inc.)
    Version:  v0.1.0
    Path:     /usr/lib/docker/cli-plugins/docker-dev
  extension: Manages Docker extensions (Docker Inc.)
    Version:  v0.2.20
    Path:     /usr/lib/docker/cli-plugins/docker-extension
  init: Creates Docker-related starter files for your project (Docker Inc.)
    Version:  v0.1.0-beta.9
    Path:     /usr/lib/docker/cli-plugins/docker-init
  sbom: View the packaged-based Software Bill Of Materials (SBOM) for an image (Anchore Inc.)
    Version:  0.6.0
    Path:     /usr/lib/docker/cli-plugins/docker-sbom
  scan: Docker Scan (Docker Inc.)
    Version:  v0.26.0
    Path:     /usr/lib/docker/cli-plugins/docker-scan
  scout: Docker Scout (Docker Inc.)
    Version:  v1.0.9
    Path:     /usr/lib/docker/cli-plugins/docker-scout

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Images: 0
 Server Version: 24.0.6
 Storage Driver: vfs
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Cgroup Version: 2
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local logentries splunk syslog
 Swarm: inactive
 Runtimes: io.containerd.runc.v2 runc
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 8165feabfdfe38c65b599c4993d227328c231fca
 runc version: v1.1.8-0-g82f18fe
 init version: de40ad0
 Security Options:
  seccomp
   Profile: unconfined
  cgroupns
 Kernel Version: 6.4.16-linuxkit
 Operating System: Docker Desktop
 OSType: linux
 Architecture: x86_64
 CPUs: 6
 Total Memory: 3.723GiB
 Name: linuxkit-525400123456
 ID: f3c7b1e2-6ac1-478d-8c8d-b99246555154
 Docker Root Dir: /mnt/samsung/docker-data
 Debug Mode: false
 HTTP Proxy: http.docker.internal:3128
 HTTPS Proxy: http.docker.internal:3128
 No Proxy: hubproxy.docker.internal
 Experimental: false
 Insecure Registries:
  hubproxy.docker.internal:5555
  127.0.0.0/8
 Live Restore Enabled: false

WARNING: daemon is not using the default seccomp profile
```