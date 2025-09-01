module "rg" {
  source   = "../modules/resource_group"
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}

module "stg" {
  depends_on = [module.rg]

  source = "../modules/storage_account"
  for_each = var.stgs

  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type


}

