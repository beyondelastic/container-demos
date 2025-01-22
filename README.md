# container-demos
Demo repository for Azure container services such as AKS

## AKS

AKS with Windows nodes deployment run
```
az deployment group create --resource-group 'resource-group' --template-file .\aks\main.bicep
```

Get AKS kubeconfig via
```
az aks get-credentials --resource-group 'resource-group' --name 'clustername'
```

Deploy windows sample IIS container app
```
kubectl apply -f .\winapp\iis.yaml
```