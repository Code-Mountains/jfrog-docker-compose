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