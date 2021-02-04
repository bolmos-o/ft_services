#!/bin/sh

minikube start --driver=docker

minikube addons enable metrics-server
minikube addons enable dashboard
minikube addons enable metallb
eval $(minikube -p minikube docker-env)


kubectl apply -f srcs/config.yaml

docker build -t wordpress srcs/wordpress/
docker build -t mysql srcs/mysql/
docker build -t pma srcs/phpmyadmin/

kubectl create configmap wp-config --from-file=srcs/wordpress/default.conf
kubectl create configmap pma-config --from-file=srcs/phpmyadmin/default.conf
kubectl apply -f srcs/ --recursive
kubectl exec mysql-5898bbd967-n5cd2 -- mysql -e "CREATE DATABASE wordpress; GRANT ALL PRIVILEGES ON wordpress.* TO 'bruno' IDENTIFIED BY 'bruno'; FLUSH PRIVILEGES;"
