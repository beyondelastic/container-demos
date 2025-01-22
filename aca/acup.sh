az containerapp up \
  --name aullah-capp \
  --resource-group rg-alexander \
  --location swedencentral \
  --environment 'aullah-capps-env' \
  --image  mcr.microsoft.com/dotnet/samples:aspnetapp \
  --target-port 8080 \
  --ingress external \
  --query properties.configuration.ingress.fqdn