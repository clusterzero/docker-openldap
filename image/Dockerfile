FROM alpine:3.3
MAINTAINER Sebastian Scatularo <sebastianscatularo@gmail.com>

ENV TERM xterm
ENV LDAP_PASSWORD toor
ENV LDAP_DOMAIN example.com
ENV LDAP_ORGANIZATION LDAP Server

RUN apk --no-cache --no-progress add \
  gettext \
  openldap \
  openldap-clients \
  openldap-back-hdb \
  openldap-back-bdb \
  ldapvi

COPY conf/*.tpl /etc/openldap/conf.tpl/
VOLUME ["/etc/openldap", "/var/lib/openldap"]
EXPOSE 389 636

ADD entrypoint /bin/entrypoint
RUN chmod +x /bin/entrypoint
ENTRYPOINT ["/bin/entrypoint"]
CMD ["/usr/lib/slapd", "-u", "ldap", "-g", "ldap", "-d", "none"]
