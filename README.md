# container-demos
Demo repository for Azure container services such as AKS

## AKS

AKS with Windows nodes deployment run
```
az deployment group create --resource-group 'resource-group' --template-file .\aks\infra\main.bicep
```

Get AKS kubeconfig via
```
az aks get-credentials --resource-group 'resource-group' --name 'clustername'
```

Deploy windows sample IIS container app
```
kubectl apply -f .\winapp\iis.yaml
```

## ACA

Execute shell script acup.sh in aca folder
```
sh aca/acup.sh
```

## AAS

AAS with Windows plan and dotnet deployment run
```
az deployment group create --resource-group 'resource-group' --template-file .\aas\main.bicep
```