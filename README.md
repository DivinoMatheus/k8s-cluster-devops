
# Required tools
- [Docker](https://www.docker.com/)
- [Minikube](https://minikube.sigs.k8s.io/docs/) (to create a virtual cluster locally)
- [Make](https://www.gnu.org/software/make/#download) (to install on MacOS exec `brew install make`)

# Creating cluster
```sh
make create-postgres

make create-products # it's important to wait postgres to be running after running this
make create-prometheus # it's important to wait products-app to be running after running this
make create-grafana # it's important to wait prometheus to be running after running this
```

# Acessing Grafana or Prometheus UI
```bash
# To access Grafana
kubectl port-forward deployment/grafana-deployment 3000

# To access Prometheus UI
kubectl port-forward deployment/prometheus-deployment 9090

# To access Products Service swagger doc
kubectl port-forward deployment/products-app-deployment 80
```