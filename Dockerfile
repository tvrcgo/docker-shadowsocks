
FROM alpine:3.8
LABEL maintainer="tvrcgo <tvrcgo@gmail.com>"

RUN apk update && \
  apk add python py-pip

RUN pip install --upgrade pip && \
  pip install shadowsocks

COPY entrypoint.sh /

ENTRYPOINT [ "sh", "/entrypoint.sh" ]
