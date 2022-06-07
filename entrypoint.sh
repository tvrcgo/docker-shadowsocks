#!/bin/bash

host=${SS_HOST:-'0.0.0.0'}
port=${SS_PORT:-'8989'}
pwd=${SS_PWD:-'123456'}
method=${SS_METHOD:-'rc4-md5'}
timeout=${SS_TIMEOUT:-'500'}

sh -c /usr/bin/ssserver -s $host -p $port -k $pwd -m $method -t $timeout
