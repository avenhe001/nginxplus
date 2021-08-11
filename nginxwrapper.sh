#!/bin/sh
if [ ${DEBUG} = error ]; 
then
  export LOGLEVEL=error
  echo $LOGLEVEL 
elif [ ${DEBUG} = info ];
then
  export LOGLEVEL=info
  echo $LOGLEVEL
else
  export LOGLEVEL=info
  echo $LOGLEVEL
fi
  envsubst < ssl.tpl > ssl.conf
  cp ssl.conf /etc/nginx/conf.d/
nginx -g "daemon off;"