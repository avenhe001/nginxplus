server {

   listen 80 default_server;
   
   server_name localhost; 
   
   error_log /dev/stdout ${LOGLEVEL};

   location / {
                root   /usr/share/nginx/html;
                index  index.html index.htm;
    }
}