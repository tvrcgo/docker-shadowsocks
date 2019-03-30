
FROM alpine:3.8
LABEL maintainer="tvrcgo <tvrcgo@gmail.com>"

RUN apk update && \
  apk add python py-pip

RUN pip install --upgrade pip && \
  pip install shadowsocks

ENV SS_HOST=0.0.0.0 SS_PORT=8989 SS_PWD=121314 SS_METHOD=rc4-md5 SS_TIMEOUT=500

ENTRYPOINT [ "/bin/sh", "-c", "/usr/bin/ssserver -s $SS_HOST -p $SS_PORT -k $SS_PWD -m $SS_METHOD -t $SS_TIMEOUT" ]
