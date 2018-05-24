FROM registry.access.redhat.com/rhel7-atomic

MAINTAINER Kilian Henneboehle "kilian.henneboehle@mailbox.org"

RUN microdnf --enablerepo=rhel-7-server-rpms --enablerepo=rhel-7-server-optional-rpms \
    install nc telnet traceroute scap-security-guide openscap-scanner openscap-utils tcpdump nmap-ncat iotop && \
    microdnf update && \
    microdnf clean all

USER debugger
