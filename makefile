create-postgres-secret: 
	kubectl apply -f postgres-secret.yaml

create-postgres-deployment: 
	kubectl apply -f postgres-deployment.yaml

create-products-app-configmap: 
	kubectl apply -f products-app-configmap.yaml

create-products-app-deployment:
	kubectl apply -f products-app-deployment.yaml

delete-postgres-secret: 
	kubectl delete -f postgres-secret.yaml

delete-postgres-deployment: 
	kubectl delete -f postgres-deployment.yaml

delete-products-app-configmap: 
	kubectl delete -f products-app-configmap.yaml

delete-products-app-deployment:
	kubectl delete -f products-app-deployment.yaml

create-postgres: create-postgres-secret create-postgres-deployment
create-products: create-products-app-configmap create-products-app-deployment

delete-postgres: delete-postgres-secret delete-postgres-deployment
delete-products: delete-products-app-configmap delete-products-app-deployment

create-all: create-postgres create-products
delete-all: delete-postgres delete-products
	