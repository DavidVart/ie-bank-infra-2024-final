// metadata name = 'Static Web Apps'
// metadata description = 'This module deploys a Static Web App.'
// metadata owner = 'Azure/module-maintainers'

// // Required parameters for deployment
// @description('The name of the Static Web App.')
// @minLength(1)
// @maxLength(40)
// param name string

// @description('Service tier and SKU for the Static Web App.')
// @allowed([
//   'Free'
//   'Standard'
// ])
// param sku string = 'Free'

// @description('Azure location for the Static Web App.')
// param location string = resourceGroup().location

// @description('GitHub repository URL for deployment source.')
// param repositoryUrl string

// @description('Branch of the repository to deploy from.')
// param branch string

// @secure()
// @description('GitHub Personal Access Token (PAT) for the repository.')
// param repositoryToken string

// // @description('Custom domains associated with this static site. Essential if adding custom domains (like example.com), but not required for basic deployments.')
// // param customDomains array = []

// // Static Web App resource definition
// resource staticSite 'Microsoft.Web/staticSites@2021-03-01' = {
//   name: name
//   location: location
//   sku: {
//     name: sku
//     tier: sku
//   }
//   properties: {
//     repositoryUrl: repositoryUrl
//     branch: branch
//     repositoryToken: repositoryToken
//   }
// }

// // Module to handle custom domains if provided
// //module staticSite_customDomains 'custom-domain/main.bicep' = [
// //  for (customDomain, index) in customDomains: {
// //    name: '${uniqueString(deployment().name, location)}-StaticSite-customDomains-${index}'
//  //   params: {
//  //     name: customDomain
//    //   staticSiteName: staticSite.name
//  //     validationMethod: indexOf(customDomain, '.') == lastIndexOf(customDomain, '.')
//  //       ? 'dns-txt-token'
//  //       : 'cname-delegation'
//  //   }
// //   }
// // ]

// // Outputs for the deployed Static Web App
// @description('The name of the Static Web App.')
// output appName string = staticSite.name

// @description('The resource ID of the Static Web App.')
// output resourceId string = staticSite.id

// @description('The default autogenerated hostname for the Static Web App.')
// output defaultHostname string = staticSite.properties.defaultHostname
