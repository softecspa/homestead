#!/usr/bin/env bash

mkdir /etc/nginx/ssl 2>/dev/null
openssl genrsa -out "/etc/nginx/ssl/$1.key" 1024 2>/dev/null
openssl req -new -key /etc/nginx/ssl/$1.key -out /etc/nginx/ssl/$1.csr -subj "/CN=$1/O=Vagrant/C=UK" 2>/dev/null
openssl x509 -req -days 365 -in /etc/nginx/ssl/$1.csr -signkey /etc/nginx/ssl/$1.key -out /etc/nginx/ssl/$1.crt 2>/dev/null

block="server {
    listen ${3:-80};
    listen ${4:-443} ssl;
    server_name $1;
    root \"$2\";

    index index.html index.htm index.php;

    charset utf-8;

    location = /favicon.ico { access_log off; log_not_found off; }
    location = /robots.txt  { access_log off; log_not_found off; }

    access_log off;
    error_log  /var/log/nginx/$1-error.log error;

    sendfile off;

    client_max_body_size 100m;

    location ~ /\.ht {
        deny all;
    }

    ssl_certificate     /etc/nginx/ssl/$1.crt;
    ssl_certificate_key /etc/nginx/ssl/$1.key;
		ssl_session_cache         shared:SSL:10m;
		ssl_session_timeout       10m;
		ssl_protocols             TLSv1;
		ssl_ciphers               HIGH:!ADH:!MD5;
		ssl_prefer_server_ciphers on;
 
		error_page 502 /502.json;

		location /502.json {
				root \"$2\";
		}

		location / {
			expires -1;
			add_header Pragma \"no-cache\";
			add_header Cache-Control \"no-store, no-cache, must-revalidate, post-check=0, pre-check=0\";

			proxy_pass http://127.0.0.1:1337;
			proxy_redirect     off;
			proxy_http_version 1.1;
			proxy_set_header Upgrade \$http_upgrade;
			proxy_set_header Connection 'upgrade';
			proxy_set_header   Host             \$host;
			proxy_set_header   X-Real-IP        \$remote_addr;
			proxy_set_header   X-Forwarded-For  \$proxy_add_x_forwarded_for;
		}
}
"

echo "$block" > "/etc/nginx/sites-available/$1"
ln -fs "/etc/nginx/sites-available/$1" "/etc/nginx/sites-enabled/$1"
