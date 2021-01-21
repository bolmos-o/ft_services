FROM	alpine:latest

RUN		apk update && \
		apk add nginx && \
		apk add openssl && \
		mkdir /run/nginx

RUN		openss req -x509

COPY	default.conf /etc/nginx/http.d/

CMD		["nginx", "-g", "daemon off;"]
