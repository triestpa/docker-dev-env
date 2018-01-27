#!/bin/bash

CMD=$1
ARG=$2

if [[ -f "$ARG" ]] ; then
  DIR=$( dirname "$ARG")
  FILE=/usr/src/work/$( basename "$ARG" )
elif [[ -d "$ARG" ]] ; then
  DIR=$( dirname "$ARG")
else
  DIR=$PWD
fi

cd $DIR

docker run -it -v $PWD:/usr/src/work triestpa/dev-env $CMD $FILE
