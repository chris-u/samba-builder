FROM oraclelinux:8

RUN dnf install @ruby:3.1 && gem install fpm

RUN dnf groupinstall "Development Tools" && dnf config-manager --enable ol8_codeready_builder

                    

