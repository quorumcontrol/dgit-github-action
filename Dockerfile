FROM alpine:3.9

LABEL "com.github.actions.name"="Push GitHub branches to dgit"
LABEL "com.github.actions.description"="A GitHub Action to push branches to dgit, primarily for syncing up after PRs"
LABEL "com.github.actions.icon"="copy"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/quorumcontrol/dgit-github-action"
LABEL "homepage"="https://github.com/quorumcontrol/dgit-github-action"
LABEL "maintainer"="dev@quorumcontrol.com"

RUN apk --no-cache add git bash

COPY dgit /usr/bin/dgit
COPY git-remote-dgit /usr/bin/git-remote-dgit
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]