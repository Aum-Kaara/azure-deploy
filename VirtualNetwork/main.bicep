param virtualNetworks_vnet_name string
param location string = resourceGroup().location
resource symbolicname 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: virtualNetworks_vnet_name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/24'
      ]
    }
  }
}
