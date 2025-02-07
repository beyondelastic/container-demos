targetScope = 'resourceGroup'

param resourceLocation string = 'westeurope'
param resourceGroupName string = 'rg-alexander'
param sshRSAPublicKey string
param linuxAdmin string = 'aullah'
param clusterName string = 'aks01-aullah'
param windowsAdmin string = 'aullah'

@secure()
param windowsAdminPassword string

param dnsPrefix string = 'aullah-dns'

module aks './aks.bicep' = {
  scope: resourceGroup(resourceGroupName)
  name: 'aks'
  params: {
    location : resourceLocation
    sshRSAPublicKey: sshRSAPublicKey
    linuxAdminUsername: linuxAdmin
    clusterName: clusterName
    windowsAdmin : windowsAdmin
    windowsAdminPassword: windowsAdminPassword
    dnsPrefix: dnsPrefix
  }
}
