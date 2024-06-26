create-postgres-secret: 
	kubectl apply -f cluster/postgres/postgres-secret.yaml
create-postgres-deployment: 
	kubectl apply -f cluster/postgres/postgres-deployment.yaml

create-products-app-configmap: 
	kubectl apply -f cluster/products-app/products-app-configmap.yaml
create-products-app-deployment:
	kubectl apply -f cluster/products-app/products-app-deployment.yaml

create-prometheus-configmap: 
	kubectl apply -f cluster/prometheus/prometheus-configmap.yaml
create-prometheus-deployment:
	kubectl apply -f cluster/prometheus/prometheus-deployment.yaml

create-prometheus-pv: 
	kubectl apply -f cluster/prometheus/prometheus-pv.yaml
create-prometheus-pvc:
	kubectl apply -f cluster/prometheus/prometheus-pvc.yaml

create-grafana-deployment:
	kubectl apply -f cluster/grafana/grafana-deployment.yaml

delete-postgres-secret: 
	kubectl delete -f cluster/postgres/postgres-secret.yaml
delete-postgres-deployment: 
	kubectl delete -f cluster/postgres/postgres-deployment.yaml

delete-products-app-configmap: 
	kubectl delete -f cluster/products-app/products-app-configmap.yaml
delete-products-app-deployment:
	kubectl delete -f cluster/products-app/products-app-deployment.yaml

delete-prometheus-configmap: 
	kubectl delete -f cluster/prometheus/prometheus-configmap.yaml
delete-prometheus-deployment:
	kubectl delete -f cluster/prometheus/prometheus-deployment.yaml
delete-prometheus-pv: 
	kubectl delete -f cluster/prometheus/prometheus-pv.yaml
delete-prometheus-pvc:
	kubectl delete -f cluster/prometheus/prometheus-pvc.yaml

delete-grafana-deployment:
	kubectl delete -f cluster/grafana/grafana-deployment.yaml

create-postgres: create-postgres-secret create-postgres-deployment
create-products: create-products-app-configmap create-products-app-deployment
create-prometheus: create-prometheus-pv create-prometheus-pvc create-prometheus-configmap create-prometheus-deployment
create-grafana: create-grafana-deployment 

delete-postgres: delete-postgres-secret delete-postgres-deployment
delete-products: delete-products-app-configmap delete-products-app-deployment
delete-prometheus: delete-prometheus-pvc delete-prometheus-pv delete-prometheus-configmap delete-prometheus-deployment
delete-grafana: delete-grafana-deployment
