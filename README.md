# OpenLDAP

[![Build Status](https://drone.cluster-zero.com/api/badges/Clusterzero/docker-openldap/status.svg)](https://drone.cluster-zero.com/Clusterzero/docker-openldap)

OpenLDAP container based on Alpine Linux 3.3

version 1.0.0

```
docker run \
--name ldap-service \
--hostname ldap-service \
--detach \
-e LDAP_PASSWORD="s3cr3t" \
-e LDAP_DOMAIN="example.com" \
-e LDAP_ORGANIZATION="LDAP Server" \
-v $PWD/slapd.volume/slapd.d:/etc/openldap/slapd.d \
-v $PWD/slapd.volume/openldap:/var/lib/openldap \
clusterzero/openldap:1.0.0
```

```
docker run \
--name phpldapadmin-service \
--hostname phpldapadmin-service \
--link ldap-service:ldap-host \
--env PHPLDAPADMIN_LDAP_HOSTS=ldap-host \
--detach \
osixia/phpldapadmin:0.6.8
```

dn: `cn=Manager,dc=example,dc=com`
password: `s3cr3t`
