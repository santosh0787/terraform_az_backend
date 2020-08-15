# Terraform with Azure Backend

This is a demo to show how to save terraform state in Azure Blob storage.

## Procedure


1. In azure portal, create a storage account. example "testsantosh"
2. Create container called "tfstate".
3. Create a main.tf file which is there in git repo and keep below contents: 

main.tf

```
terraform {
  backend "azurerm" {
  }
}

provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.0.0"
  subscription_id = "xxxxxxxxxxxxx"
  tenant_id = "xxxxxxxxxxxxxxxxxxx"
  features {}
}
```
 
 - In above file first block, you are specifying that terraform should use azure backend.
 - In second bloack, you specify Basic azure subscription id and tenant id.
 
 
4. variables.tf and as_create.tf are basic terraform files to create a availabilty set. 
5. ```backend.tfvars``` has important properties.

```
resource_group_name="RG_NAME"
storage_account_name="testterraform"
container_name="tfstate"
access_key="xxxxxxx"
key="test.tfstate"
```

In above properties, 
 - access_key is the storage account key. You can find it in "testterraform" storage account -> Settings -> access keys
 - key is the file name of terraform statefile.
 
 
 
 after having this files ready, you can now execute: 
 ``` 
     terraform init -backend-config=backend.tfvars
     terraform plan
     terraform apply
 ```
 
 You can see statefile will acquire-release lock during plan and apply procedures. This helps to avoid corrupt if multiple members want to access/modify/plan/apply same terraform configuration.
 
6. If you don't want to save access_key in a file, you can pass as ENV variable. 

``` ARM_ACCESS_KEY=xxxxxxxxxxxxxxxxxxx ```



 
 
