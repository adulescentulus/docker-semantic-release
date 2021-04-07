FROM node:lts-alpine3.12

RUN apk add -U --no-cache git=2.26.3-r0	ca-certificates=20191127-r4 bash=5.0.17-r0 \
    && rm -rf /var/cache/apk/*

RUN npm install -g semantic-release@17 @semantic-release/gitlab @semantic-release/github @semantic-release/exec

CMD ["bash"]