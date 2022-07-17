FROM jenkins/agent:jdk11

USER root

RUN apt update && apt upgrade -y && \
    apt install -y jq curl && \
    apt clean && apt autoremove -y

USER jenkins