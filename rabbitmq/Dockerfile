FROM rabbitmq:3.6.8-management
#https://www.rabbitmq.com/relocate.html
ADD assets/rabbitmq/rabbitmq.config /etc/rabbitmq/rabbitmq.config
ADD assets/rabbitmq/rabbitmq_auth_backend_http-3.6.8.ez /usr/lib/rabbitmq/lib/rabbitmq_server-3.6.8/plugins/rabbitmq_auth_backend_http-3.6.8.ez
RUN rabbitmq-plugins enable rabbitmq_auth_backend_http --offline && chmod +555 /usr/lib/rabbitmq/lib/rabbitmq_server-3.6.8/plugins/rabbitmq_auth_backend_http-3.6.8.ez && chmod +555 /etc/rabbitmq/rabbitmq.config