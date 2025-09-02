rgs = {
dev_rg={
  name     = "ta_rg1"
  location = "eastus"
}

prod_rg = {
  name     = "ta_rg1"
  location = "eastus"
}
prod_rg = {
  name     = "ta_rgin"
  location = "centralindia"
}

}


stgs = {
  dev_stg={
  name                     = "tastg1"
  location                 = "eastus"
  resource_group_name      = "ta_rg1"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

prod_stg = {
  name                     = "tastg1"
  location                 = "eastus"
  resource_group_name      = "ta_rg1"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
}


#For production 




