
FROM alpine
LABEL maintainer="tvrcgo <tvrcgo@gmail.com>"

RUN apk update && \
  apk add python py-pip

RUN pip install --upgrade pip && \
  pip install shadowsocks

ENTRYPOINT [ "/bin/sh", "-c", "/usr/bin/ssserver -s $SS_HOST -p $SS_PORT -k $SS_PWD -m $SS_METHOD -t $SS_TIMEOUT" ]
