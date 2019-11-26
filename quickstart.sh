#!/usr/bin/env bash

_() {
  (
    #当前文件夹路径
    DIR=$(cd $(dirname $0); pwd)

    mkdir -p ${DIR}/opt/elasticsearch/data
    mkdir -p ${DIR}/opt/elasticsearch/logs
    mkdir -p ${DIR}/opt/logstash/data
    mkdir -p ${DIR}/opt/logstash/logs

    chmod -R 777 ${DIR}/opt/elasticsearch/data
    chmod -R 777 ${DIR}/opt/elasticsearch/logs
    chmod -R 777 ${DIR}/opt/logstash/data
    chmod -R 777 ${DIR}/opt/logstash/logs

    docker-compose build --no-cache --force-rm
    docker-compose up
  )
}
_