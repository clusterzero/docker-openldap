# OpenLDAP
OpenLDAP container based on Alpine Linux 3.3

version 1.0.0

```
docker run \
--name ldap-service \
--hostname ldap-service \
--detach \
-e LDAP_PASSWORD="s3cr3t" \
-e LDAP_DOMAIN="ldap.clusterzero.com" \
-e LDAP_ORGANIZATION="Clusterzero Inc." \
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

dn: `cn=Manager,dc=ldap,dc=clusterzero,dc=com`
password: `s3cr3t`
