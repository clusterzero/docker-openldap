# vim:set ft=ldif:
#
dn: ${LDAP_SUFFIX}
objectclass: dcObject
objectclass: organization
o: ${LDAP_ORGANIZATION}
dc: ${LDAP_DOMAIN_RDC}


dn: cn=Manager,${LDAP_SUFFIX}
objectClass: organizationalRole
cn: Manager

dn: ou=users,${LDAP_SUFFIX}
objectClass: organizationalUnit
ou: users

dn: ou=groups,${LDAP_SUFFIX}
objectClass: organizationalUnit
ou: groups
