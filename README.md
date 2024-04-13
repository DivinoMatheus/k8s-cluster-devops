

# Installing prometheus stack using helm

```bash
# Adding helm repositories
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://charts.helm.sh/stable
helm repo update

# Installing charts
helm install prometheus prometheus-community/kube-prometheus-stack
```

# Acessing Grafana or Prometheus UI
```bash
# To access Grafana
kubectl port-forward {grafana-pod-name} 3000

# To access Prometheus UI
kubectl port-forward {prometheus-ui-pod-name} 9090

```

# Running app on Cluster

```bash
# To apply App and Database deployments
make create-all
```