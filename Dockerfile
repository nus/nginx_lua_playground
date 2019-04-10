FROM openresty/openresty

RUN echo 'stream {\n\
    include /etc/nginx/stream_conf.d/*.conf;\n\
}\n' >> /usr/local/openresty/nginx/conf/nginx.conf
ADD conf.d/app.conf /etc/nginx/conf.d/app.conf
ADD stream_conf.d/app.conf /etc/nginx/stream_conf.d/app.conf
CMD ["/usr/bin/openresty", "-g", "daemon off;"]
