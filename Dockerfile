FROM ubuntu:18.04

LABEL "com.github.actions.name"="Push GitHub branches to dgit"
LABEL "com.github.actions.description"="A GitHub Action to push branches to dgit, primarily for syncing up after PRs"
LABEL "com.github.actions.icon"="copy"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/quorumcontrol/dgit-github-action"
LABEL "homepage"="https://github.com/quorumcontrol/dgit-github-action"
LABEL "maintainer"="dev@quorumcontrol.com"

RUN apt-get update && \
    apt-get install -y git wget && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

RUN wget -qO - https://github.com/quorumcontrol/dgit/releases/latest/download/dgit-Linux-x86_64.tar.gz | tar -C /usr/local/bin -xvzf -

ENTRYPOINT [ "/entrypoint.sh" ]