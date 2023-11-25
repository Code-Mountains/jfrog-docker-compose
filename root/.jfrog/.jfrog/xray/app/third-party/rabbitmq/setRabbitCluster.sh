#!/bin/bash

# Flags
FLAG_Y="y"
FLAG_N="n"
FLAGS_Y_N="$FLAG_Y $FLAG_N"
FLAG_NOT_APPLICABLE="_NA_"

WRAPPER_SCRIPT_TYPE_RPMDEB="RPMDEB"
WRAPPER_SCRIPT_TYPE_DOCKER_COMPOSE="DOCKERCOMPOSE"

SENSITIVE_KEY_VALUE="__sensitive_key_hidden___"

# Shared system keys
SYS_KEY_SHARED_JFROGURL="shared.jfrogUrl"
SYS_KEY_SHARED_JFROGURLTIMEOUT="shared.jfrogUrlTimeOut"
SYS_KEY_SHARED_SECURITY_JOINKEY="shared.security.joinKey"
SYS_KEY_SHARED_SECURITY_MASTERKEY="shared.security.masterKey"

SYS_KEY_PDNNODE_PDNSERVERURL="pdnNode.pdnServerUrl"
SYS_KEY_PDNNODE_JOINKEY="pdnNode.joinKey"
SYS_KEY_PDNNODE_SELFGRPCADDRESS="pdnNode.selfGrpcAddress"
SYS_KEY_PDNNODE_SELFHTTPADDRESS="pdnNode.selfHttpAddress"
SYS_KEY_PDNNODE_PORT="pdnNode.port"
SYS_KEY_PDNNODE_HTTPPORT="pdnNode.httpPort"
SYS_KEY_PDNNODE_HTTPBOUNCERPORT="pdnNode.httpBouncerPort"
SYS_KEY_ROUTER_ENTRYPOINTS_EXTERNALPORT="router.entrypoints.externalPort"

SYS_KEY_PDNSERVER_SELFADDRESS="pdnServer.selfAddress"

SYS_KEY_SHARED_NODE_ID="shared.node.id"
SYS_KEY_SHARED_NODE_NAME="shared.node.name"
SYS_KEY_SHARED_JAVAHOME="shared.javaHome"
SYS_KEY_SHARED_LOGGING_CONSOLELOG_ENABLED="shared.logging.consoleLog.enabled"

SYS_KEY_SHARED_DATABASE_TYPE_VALUE_MYSQL="mysql"
SYS_KEY_SHARED_DATABASE_TYPE_VALUE_ORACLE="oracle"
SYS_KEY_SHARED_DATABASE_TYPE_VALUE_MSSQL="mssql"
SYS_KEY_SHARED_DATABASE_TYPE_VALUE_MARIADB="mariadb"
SYS_KEY_SHARED_DATABASE_TYPE_VALUE_POSTGRES="postgresql"
# If database type is selected as derby, assume its internal
SYS_KEY_SHARED_DATABASE_TYPE_VALUE_DERBY="derby"

SYS_KEY_SHARED_DATABASE_DRIVER_VALUE_MYSQL="com.mysql.jdbc.Driver"
SYS_KEY_SHARED_DATABASE_DRIVER_VALUE_ORACLE="oracle.jdbc.OracleDriver"
SYS_KEY_SHARED_DATABASE_DRIVER_VALUE_MSSQL="com.microsoft.sqlserver.jdbc.SQLServerDriver"
SYS_KEY_SHARED_DATABASE_DRIVER_VALUE_MARIADB="org.mariadb.jdbc.Driver"
SYS_KEY_SHARED_DATABASE_DRIVER_VALUE_POSTGRES="org.postgresql.Driver"
SYS_KEY_SHARED_DATABASE_DRIVER_VALUE_DERBY="org.apache.derby.jdbc.EmbeddedDriver"

SYS_KEY_SHARED_DATABASE_TYPE="shared.database.type"
SYS_KEY_SHARED_DATABASE_DRIVER="shared.database.driver"
SYS_KEY_SHARED_DATABASE_URL="shared.database.url"
SYS_KEY_SHARED_DATABASE_USERNAME="shared.database.username"
SYS_KEY_SHARED_DATABASE_PASSWORD="shared.database.password"

SYS_KEY_SHARED_REDIS_PASSWORD="shared.redis.password"
SYS_KEY_SHARED_RABBITMQ_URL="shared.rabbitMq.url"
SYS_KEY_SHARED_RABBITMQ_PASSWORD="shared.rabbitMq.password"

SYS_KEY_SHARED_ELASTICSEARCH_URL="shared.elasticsearch.url"
SYS_KEY_SHARED_ELASTICSEARCH_USERNAME="shared.elasticsearch.username"
SYS_KEY_SHARED_ELASTICSEARCH_PASSWORD="shared.elasticsearch.password"
SYS_KEY_SHARED_ELASTICSEARCH_CLUSTERSETUP="shared.elasticsearch.clusterSetup"
SYS_KEY_SHARED_ELASTICSEARCH_UNICASTFILE="shared.elasticsearch.unicastFile"
SYS_KEY_SHARED_ELASTICSEARCH_EXTRAJAVAOPTS="shared.elasticsearch.extraJavaOpts"
SYS_KEY_SHARED_ELASTICSEARCH_CLUSTERSETUP_VALUE="YES"
SYS_KEY_SHARED_ELASTICSEARCH_EXTERNALISE="shared.elasticsearch.external"
SYS_KEY_ELASTICSEARCH_APP_VERSION="elasticsearch.app.version"

getDatabaseDriver(){
    local databaseType="$1"
    case "$databaseType" in
        $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_POSTGRES)
            echo -n ${SYS_KEY_SHARED_DATABASE_DRIVER_VALUE_POSTGRES}
        ;;
        $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_MYSQL)
            echo -n ${SYS_KEY_SHARED_DATABASE_DRIVER_VALUE_MYSQL}
        ;;
        $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_MARIADB)
            echo -n ${SYS_KEY_SHARED_DATABASE_DRIVER_VALUE_MARIADB}
        ;;
        $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_MSSQL)
            echo -n ${SYS_KEY_SHARED_DATABASE_DRIVER_VALUE_MSSQL}
        ;;
        $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_ORACLE)
            echo -n ${SYS_KEY_SHARED_DATABASE_DRIVER_VALUE_ORACLE}
        ;;
    esac
}

KEY_DATABASE_DRIVER=${SYS_KEY_SHARED_DATABASE_DRIVER}

WSS_SERVER_BASE_URL="http://localhost:8080"
SYS_KEY_SERVER_WSS_BASE_URL_KEY="server.externalScannerBaseUrl"
SYS_KEY_SERVER_INTEGRATION_ENABLE_KEY="server.isExtIntegrationEnable"

# Define this in product specific script. Should contain the path to unitcast file
# File used by insight server to write cluster active nodes info. This will be read by elasticsearch
#SYS_KEY_SHARED_ELASTICSEARCH_UNICASTFILE_VALUE=""

SYS_KEY_RABBITMQ_ACTIVE_NODE_NAME="shared.rabbitMq.active.node.name"
SYS_KEY_RABBITMQ_ACTIVE_NODE_IP="shared.rabbitMq.active.node.ip"

IGNORE_RABBITMQ_CONFIGS="cluster_formation.peer_discovery_backend cluster_formation.classic_config.nodes.1"
SYS_KEY_RABBITMQ_NODE_RABBITMQCONF="shared.rabbitMq.node.rabbitmqConf"

IGNORE_SYSTEM_YAML_VALIDATION="${FLAG_Y}"

# Filenames
FILE_NAME_SYSTEM_YAML="system.yaml"
FILE_NAME_SYSTEM_YAML_TEMPLATE="system.full-template.yaml"
FILE_NAME_INSTALLER_STATE_YAML="installerState.yaml"
FILE_NAME_JOIN_KEY="join.key"
FILE_NAME_MASTER_KEY="master.key"
FILE_NAME_INSTALLER_YAML="installer.yaml"

# Global constants used in business logic
NODE_TYPE_STANDALONE="standalone"
NODE_TYPE_CLUSTER_NODE="node"
NODE_TYPE_DATABASE="database"

# External(isable) databases 
DATABASE_POSTGRES="POSTGRES"
DATABASE_ELASTICSEARCH="ELASTICSEARCH"
DATABASE_RABBITMQ="RABBITMQ"

MYSQL_LABEL="MYSQL"
ORACLE_LABEL="ORACLE"
MSSQL_LABEL="MSSQL"
MARIADB_LABEL="MARIADB"
POSTGRES_LABEL="PostgreSQL"
ELASTICSEARCH_LABEL="Elasticsearch"
RABBITMQ_LABEL="Rabbitmq"
REDIS_LABEL="Redis"

ARTIFACTORY_LABEL="Artifactory"
JFMC_LABEL="Mission Control"
INSIGHT_LABEL="Insight"
DISTRIBUTION_LABEL="Distribution"
XRAY_LABEL="Xray"
PDN_NODE_LABEL="Private Distribution Network Node"
PDN_SERVER_LABEL="Private Distribution Network Server"
RT_XRAY_TRIAL_LABEL="JFrog Platform Trial Pro X"

POSTGRES_CONTAINER="postgres"
ELASTICSEARCH_CONTAINER="elasticsearch"
RABBITMQ_CONTAINER="rabbitmq"
REDIS_CONTAINER="redis"

#Adding a small timeout before a read ensures it is positioned correctly in the screen
read_timeout=0.5

DEFAULT_CURL_TIMEOUT=10
# Options related to data directory location
PROMPT_DATA_DIR_LOCATION="Installation Directory"
KEY_DATA_DIR_LOCATION="installer.data_dir"

SYS_KEY_SHARED_NODE_HAENABLED="shared.node.haEnabled"
PROMPT_ADD_TO_CLUSTER="Are you adding an additional node to an existing product cluster?"
KEY_ADD_TO_CLUSTER="installer.ha"
VALID_VALUES_ADD_TO_CLUSTER="$FLAGS_Y_N"
SYS_KEY_ADD_TO_CLUSTER=${KEY_ADD_TO_CLUSTER}

SYS_KEY_SHARED_NODE_IP="shared.node.ip"
MESSAGE_HOST_IP="For IPv6 address, enclose value within square brackets as follows : [<ipv6_address>]"
PROMPT_HOST_IP="Please specify the IP address of this machine"
KEY_HOST_IP="installer.node.ip"

MESSAGE_POSTGRES_INSTALL="The installer can install a $POSTGRES_LABEL database, or you can connect to an existing compatible $POSTGRES_LABEL database\n(https://service.jfrog.org/installer/System+Requirements#SystemRequirements-RequirementsMatrix)\nIf you are upgrading from an existing installation, select N if you have externalized PostgreSQL, select Y if not."
PROMPT_POSTGRES_INSTALL="Do you want to install $POSTGRES_LABEL?"
KEY_POSTGRES_INSTALL="installer.install_postgresql"
KEY_POSTGRES_VERSION="installer.postgresql_version"
SYS_KEY_POSTGRES_VERSION=${KEY_POSTGRES_VERSION}
VALID_VALUES_POSTGRES_INSTALL="$FLAGS_Y_N"
SYS_KEY_POSTGRES_INSTALL=${KEY_POSTGRES_INSTALL}

# Postgres connection details
RPM_DEB_POSTGRES_HOME_DEFAULT="/var/opt/jfrog/postgres"
RPM_DEB_MESSAGE_STANDALONE_POSTGRES_DATA="$POSTGRES_LABEL home will have data and its configuration"
RPM_DEB_PROMPT_STANDALONE_POSTGRES_DATA="Type desired $POSTGRES_LABEL home location"
RPM_DEB_KEY_STANDALONE_POSTGRES_DATA="installer.postgresql.home"

MESSAGE_DATABASE_URL="Provide the database connection details"

GET_MULTI_SUPPORT_DATABASE_URL(){
    databaseURlExample=
    databaseLabel=
    getSystemValue "$SYS_KEY_SHARED_DATABASE_TYPE" "$SYS_KEY_SHARED_DATABASE_TYPE_VALUE_POSTGRES" "false" "$INSTALLER_YAML"
    case "$YAML_VALUE" in
        $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_POSTGRES)
            databaseURlExample="jdbc:postgresql://<IP_ADDRESS>:<PORT>/artifactory"
            databaseLabel="$POSTGRES_LABEL"
        ;;
        $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_MYSQL)
            databaseURlExample="jdbc:mysql://localhost:3306/artdb?characterEncoding=UTF-8&elideSetAutoCommits=true&useSSL=false"
            databaseLabel="$MYSQL_LABEL"
        ;;
        $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_MARIADB)
            databaseURlExample="jdbc:mariadb://localhost:3306/artdb?characterEncoding=UTF-8&elideSetAutoCommits=true&useSSL=false"
            databaseLabel="$MARIADB_LABEL"
        ;;
        $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_MSSQL)
            databaseURlExample="jdbc:sqlserver://localhost:1433;databaseName=artifactory;sendStringParametersAsUnicode=false;applicationName=Artifactory Binary Repository"
            databaseLabel="$MSSQL_LABEL"
        ;;
        $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_ORACLE)
            databaseURlExample="jdbc:oracle:thin:@localhost:1521:ORCL"
            databaseLabel="$ORACLE_LABEL"
        ;;
    esac
}

PROMPT_DATABASE_URL(){
    databaseURlExample=
    databaseLabel=
    case "$PRODUCT_NAME" in
            $ARTIFACTORY_LABEL)
                GET_MULTI_SUPPORT_DATABASE_URL
            ;;
            $JFMC_LABEL)
                databaseURlExample="jdbc:postgresql://<IP_ADDRESS>:<PORT>/mission_control?sslmode=disable"
                databaseLabel=$POSTGRES_LABEL
            ;;
            $INSIGHT_LABEL)
                databaseURlExample="jdbc:postgresql://<IP_ADDRESS>:<PORT>/insight?sslmode=disable"
                databaseLabel=$POSTGRES_LABEL
            ;;
            $DISTRIBUTION_LABEL)
                databaseURlExample="jdbc:postgresql://<IP_ADDRESS>:<PORT>/distribution?sslmode=disable"
                databaseLabel=$POSTGRES_LABEL
            ;;
            $XRAY_LABEL)
                databaseURlExample="postgres://<IP_ADDRESS>:<PORT>/xraydb?sslmode=disable"
                databaseLabel=$POSTGRES_LABEL
            ;;
        esac
    if [ -z "$databaseURlExample" ]; then
        echo -n "Database URL" # For consistency with username and password
        return
    fi
    echo -n "$databaseLabel url. Example: [$databaseURlExample]"
}

REGEX_MULTI_SUPPORT_DATABASE_URL(){
    databaseURlExample=
    getSystemValue "$SYS_KEY_SHARED_DATABASE_TYPE" "$SYS_KEY_SHARED_DATABASE_TYPE_VALUE_POSTGRES" "false" "$INSTALLER_YAML"
    case "$YAML_VALUE" in
            $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_POSTGRES)
                databaseURlExample=".*postgresql://.*/.*"
            ;;
            $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_MYSQL)
                databaseURlExample=".*mysql://.*"
            ;;
            $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_MARIADB)
                databaseURlExample=".*mariadb://.*"
            ;;
            $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_MSSQL)
                databaseURlExample=".*sqlserver://.*"
            ;;
            $SYS_KEY_SHARED_DATABASE_TYPE_VALUE_ORACLE)
                databaseURlExample=".*oracle:.*"
            ;;
        esac
}

REGEX_DATABASE_URL(){
    databaseURlExample=
    case "$PRODUCT_NAME" in
            $ARTIFACTORY_LABEL)
                REGEX_MULTI_SUPPORT_DATABASE_URL
            ;;
            $JFMC_LABEL)
                databaseURlExample="jdbc:postgresql://.*/.*"
            ;;
            $INSIGHT_LABEL)
                databaseURlExample="jdbc:postgresql://.*/.*"
            ;;
            $DISTRIBUTION_LABEL)
                databaseURlExample="jdbc:postgresql://.*/.*"
            ;;
            $XRAY_LABEL)
                databaseURlExample="postgres://.*/.*"
            ;;
        esac
    echo -n "^$databaseURlExample\$"
}

ERROR_MESSAGE_DATABASE_URL="Invalid database URL"
KEY_DATABASE_URL="$SYS_KEY_SHARED_DATABASE_URL"

MESSAGE_DB_PASSWORD="To setup $POSTGRES_LABEL, please enter a password"
PROMPT_DB_PASSWORD="database password"
IS_SENSITIVE_DB_PASSWORD="$FLAG_Y"
KEY_DB_PASSWORD="$SYS_KEY_SHARED_DATABASE_PASSWORD"
REGEX_DB_PASSWORD="^[a-zA-Z0-9]+$"
ERROR_MESSAGE_DB_PASSWORD="Please enter valid $POSTGRES_LABEL password"
REPLACE_POSTGRES_PASSWORD="__REPLACE_POSTGRES_PASSWORD__"

KEY_REDIS_PASSWORD="$SYS_KEY_SHARED_REDIS_PASSWORD"
DEFAULT_REDIS_PASSWORD="distri-redis"

KEY_RABBITMQ_PASSWORD="$SYS_KEY_SHARED_RABBITMQ_PASSWORD"
DEFAULT_RABBITMQ_PASSWORD="xray-rabbitmq"

MESSAGE_DATABASE_TYPE(){
    echo -n "Provide the type of your external database that you want to connect to."
    if [[ "${SUPPORTED_DATABASE_TYPES}" =~ .*${SYS_KEY_SHARED_DATABASE_TYPE_VALUE_DERBY}.* ]]; then
        echo -en "\nNote : If you choose ${SYS_KEY_SHARED_DATABASE_TYPE_VALUE_DERBY}, it will be considered as an internal database and no further details will be asked"
    fi
}

KEY_DATABASE_TYPE="$SYS_KEY_SHARED_DATABASE_TYPE"

PROMPT_DATABASE_TYPE() {
    echo -n "Enter database type, supported values [ $SUPPORTED_DATABASE_TYPES ]"
}

REGEX_DATABASE_TYPE(){
    if [ -z "$SUPPORTED_DATABASE_TYPES" ]; then
        echo -n "$[a-z]*$"
    else
        local supportedDbList=""
        for dbtype in $SUPPORTED_DATABASE_TYPES; do
            [ -z "${supportedDbList}" ] && supportedDbList="${dbtype}" || supportedDbList="${supportedDbList}|${dbtype}"
        done
        echo -n "${supportedDbList}"
    fi
}

ERROR_MESSAGE_DATABASE_TYPE="Invalid database type"

 #NOTE: It is important to display the label. Since the message may be hidden if URL is known
PROMPT_DATABASE_USERNAME="Database username (If your existing connection URL already includes the username, leave this empty)"
KEY_DATABASE_USERNAME="$SYS_KEY_SHARED_DATABASE_USERNAME"
IS_OPTIONAL_DATABASE_USERNAME="$FLAG_Y"

 #NOTE: It is important to display the label. Since the message may be hidden if URL is known
PROMPT_DATABASE_PASSWORD="Database password (If your existing connection URL already includes the password, leave this empty)"
KEY_DATABASE_PASSWORD="$SYS_KEY_SHARED_DATABASE_PASSWORD"
IS_SENSITIVE_DATABASE_PASSWORD="$FLAG_Y"
IS_OPTIONAL_DATABASE_PASSWORD="$FLAG_Y"

MESSAGE_STANDALONE_ELASTICSEARCH_INSTALL="The installer can install a $ELASTICSEARCH_LABEL database or you can connect to an existing compatible $ELASTICSEARCH_LABEL database"
PROMPT_STANDALONE_ELASTICSEARCH_INSTALL="Do you want to install $ELASTICSEARCH_LABEL?"
KEY_STANDALONE_ELASTICSEARCH_INSTALL="installer.install_elasticsearch"
VALID_VALUES_STANDALONE_ELASTICSEARCH_INSTALL="$FLAGS_Y_N"
SYS_KEY_STANDALONE_ELASTICSEARCH_INSTALL=${KEY_STANDALONE_ELASTICSEARCH_INSTALL}

MESSAGE_XRAY_ARTIFACTORY_PAIRING="If you are not performing an upgrade, you can ignore the following question and press ${FLAG_Y}"
PROMPT_XRAY_ARTIFACTORY_PAIRING="Have you disconnected Artifactory Xray pairings, except one prior to performing this upgrade (Refer http://service.jfrog.org/wiki/Xray+and+Artifactory+One+to+One+Pairing for more details) ?"
KEY_XRAY_ARTIFACTORY_PAIRING="installer.is_xray_artifactory_pairing_disconnected"
VALID_VALUES_XRAY_ARTIFACTORY_PAIRING="$FLAGS_Y_N"

# Elasticsearch connection details
MESSAGE_ELASTICSEARCH_URL="Provide the $ELASTICSEARCH_LABEL connection details"
PROMPT_ELASTICSEARCH_URL="$ELASTICSEARCH_LABEL URL"
KEY_ELASTICSEARCH_URL="$SYS_KEY_SHARED_ELASTICSEARCH_URL"

MESSAGE_ELASTICSEARCH_USERNAME="To setup $ELASTICSEARCH_LABEL, please enter a username and password"
PROMPT_ELASTICSEARCH_USERNAME="elasticsearch username"
KEY_ELASTICSEARCH_USERNAME="$SYS_KEY_SHARED_ELASTICSEARCH_USERNAME"
REPLACE_ELASTICSEARCH_USERNAME="__REPLACE_ELASTICSEARCH_USERNAME__"

PROMPT_ELASTICSEARCH_PASSWORD="elasticsearch password"
KEY_ELASTICSEARCH_PASSWORD="$SYS_KEY_SHARED_ELASTICSEARCH_PASSWORD"
IS_SENSITIVE_ELASTICSEARCH_PASSWORD="$FLAG_Y"
REPLACE_ELASTICSEARCH_PASSWORD="__REPLACE_ELASTICSEARCH_PASSWORD__"

# Cluster related questions
MESSAGE_CLUSTER_MASTER_KEY="Provide the cluster's master key. It can be found in the data directory of the first node under /etc/security/master.key"
PROMPT_CLUSTER_MASTER_KEY="Master Key"
KEY_CLUSTER_MASTER_KEY="$SYS_KEY_SHARED_SECURITY_MASTERKEY"
IS_SENSITIVE_CLUSTER_MASTER_KEY="$FLAG_Y"

MESSAGE_JOIN_KEY="The Join key is the secret key used to establish trust between services in the JFrog Platform.\n(You can copy the Join Key from Admin > User Management > Settings)"
PROMPT_JOIN_KEY="Join Key"
KEY_JOIN_KEY="$SYS_KEY_SHARED_SECURITY_JOINKEY"
IS_SENSITIVE_JOIN_KEY="$FLAG_Y"
REGEX_JOIN_KEY="^[a-zA-Z0-9]{16,}\$"
ERROR_MESSAGE_JOIN_KEY="Invalid Join Key"

# Rabbitmq related cluster information
MESSAGE_RABBITMQ_ACTIVE_NODE_NAME="Provide an active ${RABBITMQ_LABEL} node name. Run the command [ hostname -s ] on any of the existing nodes in the product cluster to get this"
PROMPT_RABBITMQ_ACTIVE_NODE_NAME="${RABBITMQ_LABEL} active node name"
KEY_RABBITMQ_ACTIVE_NODE_NAME="$SYS_KEY_RABBITMQ_ACTIVE_NODE_NAME"

# Rabbitmq related cluster information (necessary only for docker-compose)
PROMPT_RABBITMQ_ACTIVE_NODE_IP="${RABBITMQ_LABEL} active node ip"
KEY_RABBITMQ_ACTIVE_NODE_IP="$SYS_KEY_RABBITMQ_ACTIVE_NODE_IP"

MESSAGE_JFROGURL(){
    echo -e "The JFrog URL allows ${PRODUCT_NAME} to connect to a JFrog Platform Instance.\n(You can copy the JFrog URL from Administration > User Management > Settings > Connection details)"
}

PROMPT_JFROGURL="JFrog URL"
KEY_JFROGURL="$SYS_KEY_SHARED_JFROGURL"
REGEX_JFROGURL="^https?://.*:{0,}[0-9]{0,4}\$"
ERROR_MESSAGE_JFROGURL="Invalid JFrog URL"

MESSAGE_PDNNODE_JOINKEY="PDN Join key value generated in the Artifactory node an used for establishing a connection between the Nodes to the PDN Server.\n(You can copy the PDN Access Token Join Key from Administration > User Management > Settings > PDN Access Token)"
PROMPT_PDNNODE_JOINKEY="PDN Join Key"
KEY_PDNNODE_JOINKEY="$SYS_KEY_PDNNODE_JOINKEY"
IS_SENSITIVE_PDNNODE_JOINKEY="$FLAG_Y"
REGEX_PDNNODE_JOINKEY="^[a-zA-Z0-9]{16,}\$"
ERROR_MESSAGE_PDNNODE_JOINKEY="Invalid PDN Join Key"

KEY_PDNNODE_PORT="$SYS_KEY_PDNNODE_PORT"
KEY_PDNNODE_HTTPPORT="$SYS_KEY_PDNNODE_HTTPPORT"

MESSAGE_PDNNODE_HTTPBOUNCERPORT="The PDN HTTP Bouncer server secure port is used as a load balancer between the PDN nodes."
PROMPT_PDNNODE_HTTPBOUNCERPORT="HTTP Bouncer Port"
KEY_PDNNODE_HTTPBOUNCERPORT="$SYS_KEY_PDNNODE_HTTPBOUNCERPORT"

MESSAGE_ROUTER_ENTRYPOINTS_EXTERNALPORT="The external port, registered in the service registry, used by external services to communicate with services in this node"
PROMPT_ROUTER_ENTRYPOINTS_EXTERNALPORT="Router Entrypoints ExternalPort"
KEY_ROUTER_ENTRYPOINTS_EXTERNALPORT="$SYS_KEY_ROUTER_ENTRYPOINTS_EXTERNALPORT"

MESSAGE_PDNNODE_PDNSERVERURL(){
    echo -e "PDN Server URL on which the server accepts secure gRPC connections"
}

PROMPT_PDNNODE_PDNSERVERURL="PDN Server URL[<PDN Server URL>:8095]"
KEY_PDNNODE_PDNSERVERURL="$SYS_KEY_PDNNODE_PDNSERVERURL"
REGEX_PDNNODE_PDNSERVERURL=".*:{0,}[0-9]{0,4}\$"
ERROR_MESSAGE_PDNNODE_PDNSERVERURL="Invalid PDN Server URL"

MESSAGE_PDNNODE_SELFHTTPADDRESS(){
    echo -e "The HTTP address to expose for external nodes with the HTTP port."
}

PROMPT_PDNNODE_SELFHTTPADDRESS="PDN Node Self Address and http Port [<Self Address>:8089]"
KEY_PDNNODE_SELFHTTPADDRESS="$SYS_KEY_PDNNODE_SELFHTTPADDRESS"
REGEX_PDNNODE_SELFHTTPADDRESS="^http://(\w\.?){1,}:[0-9]{1,5}\$"
ERROR_MESSAGE_PDNNODE_SELFHTTPADDRESS="Invalid PDN Node Self HttpAddress"

MESSAGE_PDNNODE_SELFGRPCADDRESS(){
    echo -e "Self gRPC address to expose for other PDN Nodes. Must be aligned with the gRPC port"
}

PROMPT_PDNNODE_SELFGRPCADDRESS="PDN Node Self gRPC Address and Port"
KEY_PDNNODE_SELFGRPCADDRESS="$SYS_KEY_PDNNODE_SELFGRPCADDRESS"
REGEX_PDNNODE_SELFGRPCADDRESS="^(\w\.?){1,}:[0-9]{2,5}\$"
ERROR_MESSAGE_PDNNODE_SELFGRPCADDRESS="Invalid PDN Node Self GrpcAddress"

MESSAGE_PDNSERVER_SELFADDRESS(){
    echo -e "The PDN Server Self gRPC Address is the external hostname used to connect the PDN nodes."
}

PROMPT_PDNSERVER_SELFADDRESS="PDN Server Self Address and gRPC Port"
KEY_PDNSERVER_SELFADDRESS="$SYS_KEY_PDNSERVER_SELFADDRESS"
REGEX_PDNSERVER_SELFGRPCADDRESS="^(\w\.?){1,}:[0-9]{2,5}\$"
ERROR_MESSAGE_PDNSERVER_SELFGRPCADDRESS="Invalid PDN Server Self GrpcAddress"


# Set this to FLAG_Y on upgrade
IS_UPGRADE="${FLAG_N}"

# This belongs in JFMC but is the ONLY one that needs it so keeping it here for now. Can be made into a method and overridden if necessary
MESSAGE_MULTIPLE_PG_SCHEME="Please setup $POSTGRES_LABEL with schema as described in https://service.jfrog.org/installer/Installing+Mission+Control"

_getMethodOutputOrVariableValue() {
    unset EFFECTIVE_MESSAGE
    local keyToSearch=$1
    local effectiveMessage=
    local result="0"
    # logSilly "Searching for method: [$keyToSearch]"
    LC_ALL=C type "$keyToSearch" > /dev/null 2>&1 || result="$?"
    if [[ "$result" == "0" ]]; then
        # logSilly "Found method for [$keyToSearch]"
        EFFECTIVE_MESSAGE="$($keyToSearch)"
        return
    fi
    eval EFFECTIVE_MESSAGE=\${$keyToSearch}
    if [ ! -z "$EFFECTIVE_MESSAGE" ]; then
        return
    fi
    # logSilly "Didn't find method or variable for [$keyToSearch]"
}

# List of keys to be maintained in FILE_NAME_INSTALLER_STATE_YAML
setInstallerStateKeys() {
    local commonKeys="KEY_ADD_TO_CLUSTER KEY_POSTGRES_INSTALL KEY_POSTGRES_VERSION"
    case "$PRODUCT_NAME" in
        $ARTIFACTORY_LABEL)
            INSTALLER_STATE_KEYS="${commonKeys}"
        ;;
        $JFMC_LABEL)
            INSTALLER_STATE_KEYS="${commonKeys} KEY_STANDALONE_ELASTICSEARCH_INSTALL"
        ;;
        $INSIGHT_LABEL)
            INSTALLER_STATE_KEYS="${commonKeys} KEY_STANDALONE_ELASTICSEARCH_INSTALL"
        ;;
        $DISTRIBUTION_LABEL)
            INSTALLER_STATE_KEYS="${commonKeys}"
        ;;
        $XRAY_LABEL)
            INSTALLER_STATE_KEYS="${commonKeys}"
        ;;
        $RT_XRAY_TRIAL_LABEL)
            INSTALLER_STATE_KEYS="${commonKeys}"
        ;;
        $PDN_NODE_LABEL)
            INSTALLER_STATE_KEYS="KEY_ADD_TO_CLUSTER"
        ;;
        $PDN_SERVER_LABEL)
            INSTALLER_STATE_KEYS="KEY_ADD_TO_CLUSTER"
        ;;
    esac

}

# To bump up Elasticsearch version in JFMC (native installers) change version
RPM_DEB_ES_VERSION="__ELASTICSEARCH_VERSION__"

# To bump up Redis version in Distribution (native installers) change version
REDIS_VERSION="__REDIS_VERSION__"
RPM_DEB_REDIS_VERSION="${REDIS_VERSION}-1"

# To bump up Erlang version in xray (native installers) change version
ERLANG_VERSION="25.0.3"
RPM_DEB_ERLANG_VERSION="${ERLANG_VERSION}"

# To bump up postgresql version in all products (native installer) change version 
POSTGRES_VERSION="13.10"
POSTGRES_MAJOR_VER="13"
POSTGRES_SLES_MAJOR_VER="13"
POSTGRES_SLES_VER="13.10-1"
POSTGRES_RPM_VER="13.10-1"
POSTGRES_DEB_VER="13_13.10-1"
POSTGRES_UBUNTU16_VER="13_13.3-1"

# To bump up postgresql version in all products (compose installers) change version 
setPostgresVersion() {
    # To bump up postgresql in product add new version as new a variable for example JFROG_POSTGRES_12X_VERSION="13-5v"
    JFROG_POSTGRES_10X_VERSION="10-13v"
    JFROG_POSTGRES_12_3X_VERSION="12-3v"
    JFROG_POSTGRES_12_5X_VERSION="12-5v"
    JFROG_POSTGRES_13_2X_VERSION="13-2v"
    JFROG_POSTGRES_13_4X_VERSION="13-4v"
    JFROG_POSTGRES_13_9X_VERSION="13-9v"
    JFROG_POSTGRES_13_10X_VERSION="13-10v"

    case "$PRODUCT_NAME" in
        $ARTIFACTORY_LABEL)
            JFROG_POSTGRES_9X_VERSION="9-6-11v"
            # To bump up postgresql in artifactory add new version in array
            JFROG_POSTGRES_VERSIONS=("9.6.11" "10.13" "12.3" "12.5" "13.2" "13.4" "13.9" "13.10")
        ;;
        $JFMC_LABEL)
            JFROG_POSTGRES_9X_VERSION="9-6-11v"
            # To bump up postgresql in jfmc add new version in array
            JFROG_POSTGRES_VERSIONS=("9.6.11" "10.13" "12.3" "12.5" "13.2" "13.4" "13.9" "13.10")
        ;;
        $INSIGHT_LABEL)
            # To bump up postgresql in insight add new version in array
            JFROG_POSTGRES_VERSIONS=("13.2" "13.4" "13.9" "13.10")
        ;;
        $DISTRIBUTION_LABEL)
            JFROG_POSTGRES_9X_VERSION="9-6-10v"
            # To bump up postgresql in distribution add new version in array
            JFROG_POSTGRES_VERSIONS=("9.6.10" "10.13" "12.3" "12.5" "13.2" "13.4" "13.9" "13.10")
        ;;
        $XRAY_LABEL)
            JFROG_POSTGRES_9X_VERSION="9-5-2v"
            # To bump up postgresql in xray add new version in array
            JFROG_POSTGRES_VERSIONS=("9.5.2" "10.13" "12.3" "12.5" "13.2" "13.4" "13.9" "13.10")
        ;;
    esac
}

# Used in docker-compose trial flow when run on docker for windows and mac
export JFROG_HOST_DOCKER_INTERNAL="host.docker.internal"



# REF https://misc.flogisoft.com/bash/tip_colors_and_formatting
cClear="\e[0m"
cBlue="\e[38;5;69m"
cRedDull="\e[1;31m"
cYellow="\e[1;33m"
cRedBright="\e[38;5;197m"
cBold="\e[1m"


_loggerGetModeRaw() {
    local MODE="$1"
    case $MODE in
    INFO)
        printf ""
    ;;
    DEBUG)
        printf "%s" "[${MODE}] "
    ;;
    WARN)
        printf "${cRedDull}%s%s${cClear}" "[" "${MODE}" "] "
    ;;
    ERROR)
        printf "${cRedBright}%s%s${cClear}" "[" "${MODE}" "] "
    ;;
    esac
}


_loggerGetMode() {
    local MODE="$1"
    case $MODE in
    INFO)
        printf "${cBlue}%s%-5s%s${cClear}" "[" "${MODE}" "]"
    ;;
    DEBUG)
        printf "%-7s" "[${MODE}]"
    ;;
    WARN)
        printf "${cRedDull}%s%-5s%s${cClear}" "[" "${MODE}" "]"
    ;;
    ERROR)
        printf "${cRedBright}%s%-5s%s${cClear}" "[" "${MODE}" "]"
    ;;
    esac
}

# Capitalises the first letter of the message
_loggerGetMessage() {
    local originalMessage="$*"
    local firstChar=$(echo "${originalMessage:0:1}" | awk '{ print toupper($0) }')
    local resetOfMessage="${originalMessage:1}"
    echo "$firstChar$resetOfMessage"
}

# The spec also says content should be left-trimmed but this is not necessary in our case. We don't reach the limit.
_loggerGetStackTrace() {
    printf "%s%-30s%s" "[" "$1:$2" "]"
}

_loggerGetThread() {
    printf "%s" "[main]"
}

_loggerGetServiceType() {
    printf "%s%-5s%s" "[" "shell" "]"
}

#Trace ID is not applicable to scripts
_loggerGetTraceID() {
    printf "%s" "[]"
}

logRaw() {
    echo ""
    printf "$1"
    echo ""
}

logBold(){
    echo ""
    printf "${cBold}$1${cClear}"
    echo ""
}

# The date binary works differently based on whether it is GNU/BSD
is_date_supported=0
date --version > /dev/null 2>&1 || is_date_supported=1
IS_GNU=$(echo $is_date_supported)

_loggerGetTimestamp() {
    if [ "${IS_GNU}" == "0" ]; then
        echo -n $(date -u +%FT%T.%3NZ)
    else
        echo -n $(date -u +%FT%T.000Z)
    fi
}

# https://www.shellscript.sh/tips/spinner/
_spin()
{
  spinner="/|\\-/|\\-"
  while :
  do
    for i in `seq 0 7`
    do
      echo -n "${spinner:$i:1}"
      echo -en "\010"
      sleep 1
    done
  done
}

showSpinner() {
    # Start the Spinner:
    _spin &
    # Make a note of its Process ID (PID):
    SPIN_PID=$!
    # Kill the spinner on any signal, including our own exit.
    trap "kill -9 $SPIN_PID" `seq 0 15` &> /dev/null || return 0
}

stopSpinner() {
    local occurrences=$(ps -ef | grep -wc "${SPIN_PID}")
    let "occurrences+=0"
    # validate that it is present (2 since this search itself will show up in the results)
    if [ $occurrences -gt 1 ]; then
        kill -9 $SPIN_PID &>/dev/null || return 0
        wait $SPIN_ID &>/dev/null
    fi
}

_getEffectiveMessage(){
    local MESSAGE="$1"
    local MODE=${2-"INFO"}

    if [ -z "$CONTEXT" ]; then
        CONTEXT=$(caller)
    fi

    _EFFECTIVE_MESSAGE=
    if [ -z "$LOG_BEHAVIOR_ADD_META" ]; then
        _EFFECTIVE_MESSAGE="$(_loggerGetModeRaw $MODE)$(_loggerGetMessage $MESSAGE)"
    else
        local SERVICE_TYPE="script"
        local TRACE_ID=""
        local THREAD="main"
        
        local CONTEXT_LINE=$(echo "$CONTEXT" | awk '{print $1}')
        local CONTEXT_FILE=$(echo "$CONTEXT" | awk -F"/" '{print $NF}')
        
        _EFFECTIVE_MESSAGE="$(_loggerGetTimestamp) $(_loggerGetServiceType) $(_loggerGetMode $MODE) $(_loggerGetTraceID) $(_loggerGetStackTrace $CONTEXT_FILE $CONTEXT_LINE) $(_loggerGetThread) - $(_loggerGetMessage $MESSAGE)"
    fi
    CONTEXT=
}

# Important - don't call any log method from this method. Will become an infinite loop. Use echo to debug
_logToFile() {
    local MODE=${1-"INFO"}
    local targetFile="$LOG_BEHAVIOR_ADD_REDIRECTION"
    # IF the file isn't passed, abort
    if [ -z "$targetFile" ]; then
        return
    fi
    # IF this is not being run in verbose mode and mode is debug or lower, abort
    if [ "${VERBOSE_MODE}" != "$FLAG_Y" ] && [ "${VERBOSE_MODE}" != "true" ] && [ "${VERBOSE_MODE}" != "debug" ]; then
        if [ "$MODE" == "DEBUG" ] || [ "$MODE" == "SILLY" ]; then
            return
        fi
    fi

    # Create the file if it doesn't exist
    if [ ! -f "${targetFile}" ]; then
        return
        # touch $targetFile > /dev/null 2>&1 || true
    fi
    # # Make it readable
    # chmod 640 $targetFile > /dev/null 2>&1 || true

    # Log contents
    printf "%s\n" "$_EFFECTIVE_MESSAGE" >> "$targetFile" || true
}

logger() {
    if [ "$LOG_BEHAVIOR_ADD_NEW_LINE" == "$FLAG_Y" ]; then
        echo ""
    fi
    CONTEXT=$(caller)
    _getEffectiveMessage "$@"
    local MODE=${2-"INFO"}
    printf "%s\n" "$_EFFECTIVE_MESSAGE"
    _logToFile "$MODE"
}

logDebug(){
    VERBOSE_MODE=${VERBOSE_MODE-"false"}
    CONTEXT=$(caller)
    if [ "${VERBOSE_MODE}" == "$FLAG_Y" ] || [ "${VERBOSE_MODE}" == "true" ] || [ "${VERBOSE_MODE}" == "debug" ];then
        logger "$1" "DEBUG"
    else
        logger "$1" "DEBUG" >&6
    fi
    CONTEXT=
}

logSilly(){
    VERBOSE_MODE=${VERBOSE_MODE-"false"}
    CONTEXT=$(caller)
    if [ "${VERBOSE_MODE}" == "silly" ];then
        logger "$1" "DEBUG"
    else
        logger "$1" "DEBUG" >&6
    fi
    CONTEXT=
}

logError() {
    CONTEXT=$(caller)
    logger "$1" "ERROR"
    CONTEXT=
}

errorExit () {
    CONTEXT=$(caller)
    logger "$1" "ERROR"
    CONTEXT=
    exit 1
}

warn () {
    CONTEXT=$(caller)
    logger "$1" "WARN"
    CONTEXT=
}

note () {
    CONTEXT=$(caller)
    logger "$1" "NOTE"
    CONTEXT=
}

bannerStart() {
    title=$1
    echo
    echo -e "\033[1m${title}\033[0m"
    echo
}

bannerSection() {
    title=$1
    echo
    echo -e "******************************** ${title} ********************************"
    echo
}

bannerSubSection() {
    title=$1
    echo
    echo -e "************** ${title} *******************"
    echo
}

bannerMessge() {
    title=$1
    echo
    echo -e "********************************"
    echo -e "${title}"
    echo -e "********************************"
    echo
}

setRed () {
    local input="$1"
    echo -e \\033[31m${input}\\033[0m
}
setGreen () {
    local input="$1"
    echo -e \\033[32m${input}\\033[0m
}
setYellow () {
    local input="$1"
    echo -e \\033[33m${input}\\033[0m
}

logger_addLinebreak () {
    echo -e "---\n"
}

bannerImportant() {
    title=$1
    local bold="\033[1m"
    local noColour="\033[0m"
    echo
    echo -e "${bold}######################################## IMPORTANT ########################################${noColour}"
    echo -e "${bold}${title}${noColour}"
    echo -e "${bold}###########################################################################################${noColour}"
    echo
}

bannerEnd() {
    #TODO pass a title and calculate length dynamically so that start and end look alike
    echo
    echo "*****************************************************************************"
    echo
}

banner() {
    title=$1
    content=$2
    bannerStart "${title}"
    echo -e "$content"
}

# The logic below helps us redirect content we'd normally hide to the log file. 
    #
    # We have several commands which clutter the console with output and so use 
    # `cmd > /dev/null` - this redirects the command's output to null.
    # 
    # However, the information we just hid maybe useful for support. Using the code pattern
    # `cmd >&6` (instead of `cmd> >/dev/null` ), the command's output is hidden from the console 
    # but redirected to the installation log file
    # 

#Default value of 6 is just null
exec 6>>/dev/null
redirectLogsToFile() {
    echo ""
    # local file=$1

    # [ ! -z "${file}" ] || return 0

    # local logDir=$(dirname "$file")

    # if [ ! -f "${file}" ]; then
    #     [ -d "${logDir}" ] || mkdir -p ${logDir} || \
    #     ( echo "WARNING : Could not create parent directory (${logDir}) to redirect console log : ${file}" ; return 0 )
    # fi

    # #6 now points to the log file
    # exec 6>>${file}
    # #reference https://unix.stackexchange.com/questions/145651/using-exec-and-tee-to-redirect-logs-to-stdout-and-a-log-file-in-the-same-time
    # exec 2>&1 > >(tee -a "${file}")
}

# Check if a give key contains any sensitive string as part of it
# Based on the result, the caller can decide its value can be displayed or not
#   Sample usage : isKeySensitive "${key}" && displayValue="******" || displayValue=${value}
isKeySensitive(){
    local key=$1
    # keep all the sensitive keys in lower case
    local sensitiveKeys="password|secret|key|token|extrajavaopts|database\.url"

    if [ -z "${key}" ]; then
        return 1
    else
        local lowercaseKey=$(echo "${key}" | tr '[:upper:]' '[:lower:]' 2>/dev/null)
        [[ "${lowercaseKey}" =~ ${sensitiveKeys} ]] && return 0 || return 1
    fi
}

getPrintableValueOfKey(){
    local displayValue=
    local key="$1"
    if [ -z "$key" ]; then
        # This is actually an incorrect usage of this method but any logging will cause unexpected content in the caller
        echo -n ""
        return
    fi

    local value="$2"
    isKeySensitive "${key}" && displayValue="$SENSITIVE_KEY_VALUE" || displayValue="${value}"
    echo -n $displayValue
}

_createConsoleLog(){
    if [ -z "${JF_PRODUCT_HOME}" ]; then
        return
    fi
    local targetFile="${JF_PRODUCT_HOME}/var/log/console.log"
    mkdir -p "${JF_PRODUCT_HOME}/var/log" || true
    if [ ! -f ${targetFile} ]; then
        touch $targetFile > /dev/null 2>&1 || true
    fi
    chmod 640 $targetFile > /dev/null 2>&1 || true
}

# Output from application's logs are piped to this method. It checks a configuration variable to determine if content should be logged to 
# the common console.log file
redirectServiceLogsToFile() {

    local result="0"
    local SKIP="${FLAG_N}"
    local targetFile=

    # check if the function getSystemValue exists
    LC_ALL=C type getSystemValue > /dev/null 2>&1 || result="$?"
    if [[ "$result" != "0" ]]; then
        warn "Couldn't find the systemYamlHelper. Skipping log redirection"
        SKIP="${FLAG_Y}"
    fi

    getSystemValue "shared.logging.consoleLog.enabled" "NOT_SET"
    if [[ "${SKIP}" == "${FLAG_N}" && "${YAML_VALUE}" == "false" ]]; then
        logger "Redirection is set to false. Skipping log redirection"
        SKIP="${FLAG_Y}"
    fi

    if [[ "${SKIP}" == "${FLAG_N}" && -z "${JF_PRODUCT_HOME}" || "${JF_PRODUCT_HOME}" == "" ]]; then
        warn "JF_PRODUCT_HOME is unavailable. Skipping log redirection"
        SKIP="${FLAG_Y}"
    fi

    if [[ "${SKIP}" == "${FLAG_Y}" ]]; then
        targetFile="/dev/null"
    else
        targetFile="${JF_PRODUCT_HOME}/var/log/console.log"
        _createConsoleLog
    fi

    while read -r line; do
        printf '%s\n' "${line}" >> $targetFile || return 0 # Don't want to log anything - might clutter the screen
    done
}

## Display environment variables starting with JF_ along with its value
## Value of sensitive keys will be displayed as "******"
##
## Sample Display :
##
## ========================
## JF Environment variables
## ========================
##
## JF_SHARED_NODE_ID                   : locahost
## JF_SHARED_JOINKEY                   : ******
##
##
displayEnv() {
    local JFEnv=$(printenv | grep ^JF_ 2>/dev/null)
    local key=
    local value=

    if [ -z "${JFEnv}" ]; then
        return
    fi

    cat << ENV_START_MESSAGE

========================
JF Environment variables
========================
ENV_START_MESSAGE

    for entry in ${JFEnv}; do
        key=$(echo "${entry}" | awk -F'=' '{print $1}')
        value=$(echo "${entry}" | cut -d '=' -f2-)

        isKeySensitive "${key}" && value="******" || value=${value}
        
        printf "\n%-35s%s" "${key}" " : ${value}"
    done
    echo;
}

## Check if redirection to console log is disabled
##
## Sample usage:
##
## if $(isConsoleLogDisabled); then
##    // its disabled, forget about console.log
## else
##    // console.log is important, write all information to it
## fi
##
isConsoleLogDisabled(){
    local result=
    # check if the function getSystemValue exists
    LC_ALL=C type getSystemValue > /dev/null 2>&1
    result="$?"
    if [[ "$result" != "0" ]]; then
        return 1;
    fi

    getSystemValue "shared.logging.consoleLog.enabled" "NOT_SET" >/dev/null 2>&1

    # disable console log in docker container by default as this effects performance - INST-1238
    if [[ $(isRunningInsideAContainer 2>/dev/null) == "$FLAG_Y" && "${YAML_VALUE}" == "NOT_SET" ]] || [[ "${YAML_VALUE}" == "false" ]] ; then
        return 0;
    else
        return 1;
    fi
}

_addLogRotateConfiguration() {
    logDebug "Method ${FUNCNAME[0]} Caller:$(caller)"
    # mandatory inputs
    local confFile="$1"
    local logFile="$2"

    # Method available in _ioOperations.sh
    LC_ALL=C type io_setYQPath > /dev/null 2>&1 || return 1

    io_setYQPath

    # Method available in _systemYamlHelper.sh
    LC_ALL=C type getSystemValue > /dev/null 2>&1 || return 1

    local frequency="daily"
    local archiveFolder="archived"

    local compressLogFiles=
    local delaycompressEnable=
    getSystemValue "shared.logging.rotation.compress" "true"
    if [[ "${YAML_VALUE}" == "true" ]]; then
        compressLogFiles="compress"
        delaycompressEnable="delaycompress"
    fi

    getSystemValue "shared.logging.rotation.maxFiles" "10"
    local noOfBackupFiles="${YAML_VALUE}"

    getSystemValue "shared.logging.rotation.maxSizeMb" "25"
    local sizeOfFile="${YAML_VALUE}M"

    logDebug "Adding logrotate configuration for [$logFile] to [$confFile]"

    # Add configuration to file
    local confContent=$(cat << LOGROTATECONF
$logFile {
    $frequency
    missingok
    copytruncate
    rotate $noOfBackupFiles
    $compressLogFiles
    $delaycompressEnable
    notifempty
    olddir $archiveFolder
    dateext
    extension .log
    dateformat -%Y-%m-%d-%s
    size ${sizeOfFile}
}
LOGROTATECONF
) 
    echo "${confContent}" > ${confFile} || return 1
}

_operationIsBySameUser() {
    local targetUser="$1"
    local currentUserID=$(id -u)
    local currentUserName=$(id -un)

    if [ $currentUserID == $targetUser ] || [ $currentUserName == $targetUser ]; then
        echo -n "yes"
    else   
        echo -n "no"
    fi
}

_addCronJobForLogrotate() {
    logDebug "Method ${FUNCNAME[0]} Caller:$(caller)"
    
    # Abort if logrotate is not available
    [ "$(io_commandExists 'crontab')" != "yes" ] && warn "cron is not available" && return 1

    # mandatory inputs
    local productHome="$1"
    local confFile="$2"
    local cronJobOwner="$3"

    # We want to use our binary if possible. It may be more recent than the one in the OS
    local logrotateBinary="$productHome/app/third-party/logrotate/logrotate"

    if [ ! -f "$logrotateBinary" ]; then
        logrotateBinary="logrotate"
        [ "$(io_commandExists 'logrotate')" != "yes" ] && warn "logrotate is not available" && return 1
    fi
    local cmd="$logrotateBinary ${confFile} --state $productHome/var/etc/logrotate/logrotate-state" #--verbose

    id -u $cronJobOwner > /dev/null 2>&1 || { warn "User $cronJobOwner does not exist. Aborting logrotate configuration" && return 1; }
    
    # Remove the existing line
    removeLogRotation "$productHome" "$cronJobOwner" || true

    # Run logrotate daily at the 55th minute of every hour
    local cronInterval="55 * * * * $cmd"

    local standaloneMode=$(_operationIsBySameUser "$cronJobOwner")

    # If this is standalone mode, we cannot use -u - the user running this process may not have the necessary privileges
    if [ "$standaloneMode" == "no" ]; then
        (crontab -l -u $cronJobOwner 2>/dev/null; echo "$cronInterval") | crontab -u $cronJobOwner -
    else
        (crontab -l 2>/dev/null; echo "$cronInterval") | crontab -
    fi
}

## Configure logrotate for a product
## Failure conditions:
## If logrotation could not be setup for some reason
## Parameters:
## $1: The product name
## $2: The product home
## Depends on global: none
## Updates global: none
## Returns: NA

configureLogRotation() {
    logDebug "Method ${FUNCNAME[0]} Caller:$(caller)"
    
    # disable console log in docker container as this effects performance - INST-1238
    if $(isConsoleLogDisabled >/dev/null 2>&1); then
        return 0;
    fi

    # mandatory inputs
    local productName="$1"
    if [ -z $productName ]; then
        warn "Incorrect usage. A product name is necessary for configuring log rotation" && return 1
    fi
    
    local productHome="$2"
    if [ -z $productHome ]; then
        warn "Incorrect usage. A product home folder is necessary for configuring log rotation" && return 1
    fi

    local logFile="${productHome}/var/log/console.log"
    if [[ $(uname) == "Darwin" ]]; then
        logger "Log rotation for [$logFile] has not been configured. Please setup manually"
        return 0
    fi
    
    local userID="$3"
    if [ -z $userID ]; then
        warn "Incorrect usage. A userID is necessary for configuring log rotation" && return 1
    fi

    local groupID=${4:-$userID}
    local logConfigOwner=${5:-$userID}

    logDebug "Configuring log rotation as user [$userID], group [$groupID], effective cron User [$logConfigOwner]"
    
    local errorMessage="Could not configure logrotate. Please configure log rotation of the file: [$logFile] manually"

    local confFile="${productHome}/var/etc/logrotate/logrotate.conf"

    # TODO move to recursive method
    createDir "${productHome}" "$userID" "$groupID" || { warn "${errorMessage}" && return 1; }
    createDir "${productHome}/var" "$userID" "$groupID" || { warn "${errorMessage}" && return 1; }
    createDir "${productHome}/var/log" "$userID" "$groupID" || { warn "${errorMessage}" && return 1; }
    createDir "${productHome}/var/log/archived" "$userID" "$groupID" || { warn "${errorMessage}" && return 1; }
    
    # TODO move to recursive method
    createDir "${productHome}/var/etc"  "$userID" "$groupID" || { warn "${errorMessage}" && return 1; }
    createDir "${productHome}/var/etc/logrotate" "$userID" "$groupID" || { warn "${errorMessage}" && return 1; }

    # conf file should be owned by the user running the script
    createFile "${confFile}" "$userID" "$groupID" || { warn "Could not create configuration file [$confFile]" return 1; }

    _addLogRotateConfiguration "${confFile}" "${logFile}" "$userID" "$groupID" || { warn "${errorMessage}" && return 1; }
    _addCronJobForLogrotate "${productHome}" "${confFile}" "${logConfigOwner}" || { warn "${errorMessage}" && return 1; }
}

_pauseExecution() {
    if [ "${VERBOSE_MODE}" == "debug" ]; then
      
        local breakPoint="$1"
        if [ ! -z "$breakPoint" ]; then
            printf "${cBlue}Breakpoint${cClear} [$breakPoint] "
            echo ""
        fi
        printf "${cBlue}Press enter once you are ready to continue${cClear}"
        read -s choice
        echo ""
    fi
}

# removeLogRotation "$productHome" "$cronJobOwner" || true
removeLogRotation() {
    logDebug "Method ${FUNCNAME[0]} Caller:$(caller)"
    if [[ $(uname) == "Darwin" ]]; then
        logDebug "Not implemented for Darwin."
        return 0
    fi
    local productHome="$1"
    local cronJobOwner="$2"
    local standaloneMode=$(_operationIsBySameUser "$cronJobOwner")

    local confFile="${productHome}/var/etc/logrotate/logrotate.conf"
    
    if [ "$standaloneMode" == "no" ]; then
        crontab -l -u $cronJobOwner 2>/dev/null | grep -v "$confFile" | crontab -u $cronJobOwner -
    else
        crontab -l 2>/dev/null | grep -v "$confFile" | crontab -
    fi
}

# NOTE: This method does not check the configuration to see if redirection is necessary.
# This is intentional. If we don't redirect, tomcat logs might get redirected to a folder/file
# that does not exist, causing the service itself to not start
setupTomcatRedirection() {
    logDebug "Method ${FUNCNAME[0]} Caller:$(caller)"

    if $(isConsoleLogDisabled >/dev/null 2>&1); then
        export CATALINA_OUT="/dev/null"
        logger "Redirection is set to false. Skipping catalina log redirection"
        return 0;
    else
        local consoleLog="${JF_PRODUCT_HOME}/var/log/console.log"
        _createConsoleLog
        export CATALINA_OUT="${consoleLog}"
    fi
}

setupScriptLogsRedirection() {
    logDebug "Method ${FUNCNAME[0]} Caller:$(caller)"
    if [ -z "${JF_PRODUCT_HOME}" ]; then
        logDebug "No JF_PRODUCT_HOME. Returning"
        return
    fi
    # Create the console.log file if it is not already present
    # _createConsoleLog || true
    # # Ensure any logs (logger/logError/warn) also get redirected to the console.log
    # # Using installer.log as a temparory fix. Please change this to console.log once INST-291 is fixed
    export LOG_BEHAVIOR_ADD_REDIRECTION="${JF_PRODUCT_HOME}/var/log/console.log"
    export LOG_BEHAVIOR_ADD_META="$FLAG_Y"
}

# Returns Y if this method is run inside a container
isRunningInsideAContainer() {
    if [ -f "/.dockerenv" ]; then
        echo -n "$FLAG_Y"
    else
        echo -n "$FLAG_N"
    fi 
}

_messageBeforePrompt() {
    if [ "$DONT_PROMPT_USE_DEFAULTS" != "$FLAG_Y" ];then
        logRaw "$1"
    fi
}

#!/bin/bash

# Use packaged rabbitmq if available - to handle rpm/deb installation
# #########
# ######### NOTE : All the rabbitmq executables used in this file has to be prepended with ${rabbitmqBin}
# ######### Example : ${rabbitmqBin}rabbitmqctl
# #########
rabbitmqBin=${JF_PRODUCT_HOME}/app/third-party/rabbitmq/sbin/
if ! [ -x ${rabbitmqBin}rabbitmqctl ]; then
    rabbitmqBin=""
fi

function local_log() {
    local result="0"
    # use the logger method if it is available
    LC_ALL=C type logger > /dev/null 2>&1 || result="$?"
    if [[ "$result" != "0" ]]; then
        echo "$1"
        return 0
    fi
    logger "$1"
}

function check_node_health(){
    local_log "About to begin checking node health"
    local rabbitmq_ping=1
    local max_retry=10
    local counter=0
    until [[ ${rabbitmq_ping} == 0 || counter -eq ${max_retry} ]]; do
        ((counter++))
        ${rabbitmqBin}rabbitmq-diagnostics node_health_check > /dev/null 2>&1
        rabbitmq_ping=$?
        sleep 1
    done
    if [ "${rabbitmq_ping}" != "0" ]; then
        logError "RabbitMQ diagnostics have failed"
    else
        local_log "Done checking node health"
    fi
}

function set_policy(){
    ${rabbitmqBin}rabbitmqctl set_policy ha-all "." '{"ha-mode":"all", "ha-sync-mode":"automatic"}' --apply-to all --priority 0
    local ret_code=$?
    if [[ ${ret_code} != 0 ]]; then
        logError "Could not set policy, command [ ${rabbitmqBin}rabbitmqctl set_policy ha-all \".\" '{\"ha-mode\":\"all\", \"ha-sync-mode\":\"automatic\"}' --apply-to all --priority 0 ] exited with status code ${ret_code}"
        exit 1
    fi
}

function join_to_existing_cluster(){
    if [ -z "$JF_SHARED_RABBITMQ_ACTIVE_NODE_NAME" ] || [ "$JF_SHARED_RABBITMQ_ACTIVE_NODE_NAME" == "None" ]; then
        local_log "Method: [join_to_existing_cluster]. This node is not part of a cluster"
        return 0;
    fi

    local secondNode=$(${rabbitmqBin}rabbitmqctl cluster_status --formatter json 2>/dev/null | tr -d '\n' | tr -d ' ' | awk -F ']' '{print $2}' | awk -F '[' '{print $2}'  | tr -d '"' | awk -F ',' '{print $2}' | tr -d '\n' 2>/dev/null)
    
    if [ ! -z "${secondNode}" ]; then
        local_log "Cluster is already formed, skipping join action to [${JF_SHARED_RABBITMQ_ACTIVE_NODE_NAME}]"
        set_policy
        return 0;
    fi

    local isContainer=$(isRunningInsideAContainer 2>/dev/null)

    # In docker-compose there is no need to add this node to a cluster now.
    if [ ! -z "${isContainer}" ] && [ "${isContainer}"  == "$FLAG_Y" ]; then
        local_log "Active node for this node is: [${JF_SHARED_RABBITMQ_ACTIVE_NODE_NAME}]"
        set_policy
        ${rabbitmqBin}rabbitmqctl --node "rabbit@${JF_SHARED_RABBITMQ_ACTIVE_NODE_NAME}" status 2>/dev/null
        ret_code=$?
        if [[ ${ret_code} != 0 ]]; then
            logError "Active node is: [${JF_SHARED_RABBITMQ_ACTIVE_NODE_NAME}] but this node is not part of a cluster"
            rabbitmqctl stop_app
            exit 1
        fi
    else
        local_log "Check if the local rabbit is already part of the cluster: [${JF_SHARED_RABBITMQ_ACTIVE_NODE_NAME}]"
        ${rabbitmqBin}rabbitmqctl --node "rabbit@${JF_SHARED_RABBITMQ_ACTIVE_NODE_NAME}" status >/dev/null 2>&1
        ret_code=$?
        if [[ ${ret_code} == 0 ]]; then
            ${rabbitmqBin}rabbitmqctl stop_app && \
            ${rabbitmqBin}rabbitmqctl join_cluster rabbit@${JF_SHARED_RABBITMQ_ACTIVE_NODE_NAME} && \
            ${rabbitmqBin}rabbitmqctl start_app && \
            set_policy
        fi
    fi
}

function check_cluster_node_health(){
    node_for_check=${1}
    rabbitmq_ping=1
    max_retry=30
    counter=0
    until [[ ${rabbitmq_ping} == 0 || counter -eq ${max_retry} ]]; do
        ((counter++))
        local_log "Checking HEALTH for node [${node_for_check}]... (Attempt: [${counter}])"
        ${rabbitmqBin}rabbitmq-diagnostics node_health_check -n ${node_for_check} > /dev/null 2>&1
        rabbitmq_ping=$?
        if [ ${rabbitmq_ping} == 0 ]; then
            local_log "Node [${node_for_check}] is healthy"
        fi 
        sleep 1
    done
    if [[ counter -eq ${max_retry} ]]; then
        warn "Reached maximum attempts (${max_retry}) for node ${node_for_check}"
        clean_cluster_node_if_configured ${node_for_check}
    fi
}

function clean_cluster_nodes(){
    local nodes=$(${rabbitmqBin}rabbitmqctl cluster_status --formatter json 2>/dev/null | tr -d '\n' | tr -d ' ' | awk -F ']' '{print $2}' | awk -F '[' '{print $2}'  | tr -d '"' | tr -s ',' ' ')
    local_log "Registered nodes are: ${nodes}"
    for node in ${nodes}; do
        check_cluster_node_health ${node}
    done
}

function clean_cluster_node_if_configured(){
    stopped_rabbitmq_node=${1}

    if [[ ${JF_SHARED_RABBITMQ_CLEAN} = [yY] ]]; then
        local_log "Removing node '${stopped_rabbitmq_node}' from cluster..."
        ${rabbitmqBin}rabbitmqctl forget_cluster_node ${stopped_rabbitmq_node}
        if [[ $? -ne 0 ]]; then
            local_log "FAILED to remove ${stopped_rabbitmq_node} from cluster"
        fi
    else
        local_log "Skipping removal of node ${stopped_rabbitmq_node}..."
        local_log "More details:"
        ${rabbitmqBin}rabbitmq-diagnostics node_health_check -n ${stopped_rabbitmq_node}
    fi
}

waitForRabbitServiceToStart() {
    local rabbitmq_ping=1
    local max_retry=30
    local counter=0
    until [[ ${rabbitmq_ping} == 0 || counter -eq ${max_retry} ]]; do
        ((counter++))
        local_log "Checking if the service is up ... (Attempt: ${counter})"
        ${rabbitmqBin}rabbitmqctl status > /dev/null 2>&1
        rabbitmq_ping=$?
        sleep 10
    done
    if [[ counter -eq ${max_retry} ]]; then
        warn "Reached maximum attempts (${max_retry}). Service does not seem to have started"
        return 1
    fi
    return 0
}

changeRabbitmqPassword(){
    grep "^default_pass.*" ${RABBITMQ_CONFIG_FILE} > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        local rabbitmqPassValue=$(grep "default_pass*" "${RABBITMQ_CONFIG_FILE}")
        rabbitmqPassValue=$(echo "${rabbitmqPassValue}" | awk -F"=" '{print $2}')
        rabbitmqPassValue=$(io_trim "${rabbitmqPassValue}")
        local check=(${rabbitmqBin}rabbitmqctl authenticate_user guest ${rabbitmqPassValue})
        if [[ ${check} =~ *Success* ]]; then
            return
        fi
        ${rabbitmqBin}rabbitmqctl change_password guest ${rabbitmqPassValue} > /dev/null 2>&1
        local_log "Changed password for guest"
    fi
}

main() {
    waitForRabbitServiceToStart || {
        return 1;
    }
    check_node_health
    changeRabbitmqPassword
    join_to_existing_cluster
    clean_cluster_nodes
}

local_log "Executing script as $(whoami)"

if [ ! -z "$JF_SHARED_RABBITMQ_ACTIVE_NODE_NAME" ]; then
    local_log "Value of JF_SHARED_RABBITMQ_ACTIVE_NODE_NAME is $JF_SHARED_RABBITMQ_ACTIVE_NODE_NAME"
fi

main