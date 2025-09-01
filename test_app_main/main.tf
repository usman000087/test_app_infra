module "rg" {
  source = "../modules/resource_group"
    name     = var.dev_rg.name
    location = var.dev_rg.location
}

module "stg" {
    depends_on = [ module.rg ]
    
  source = "../modules/storage_account"
 
    name                     = var.dev_stg.name
    resource_group_name      = var.dev_stg.resource_group_name
    location                 = var.dev_stg.location
    account_tier             = var.dev_stg.account_tier
    account_replication_type = var.dev_stg.account_replication_type


  }

