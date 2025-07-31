# Imagen base oficial de Jenkins (LTS con JDK 17)
FROM jenkins/jenkins:lts-jdk17

USER root

# Instala Python 3 y pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean

# Verifica versiones instaladas
RUN python3 --version && pip3 --version

# Vuelve al usuario jenkins (seguridad)
USER jenkins