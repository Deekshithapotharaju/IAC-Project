module "network" {
  source = "./modules/network"
  location = var.location
}

module "compute" {
  source              = "./modules/compute"
  resource_group_name = module.network.resource_group_name
  location            = module.network.location
  subnet_id           = module.network.subnet_id
}

module "storage" {
  source              = "./modules/storage"
  resource_group_name = module.network.resource_group_name
  location            = module.network.location
}

module "database" {
  source              = "./modules/database"
  resource_group_name = module.network.resource_group_name
  location            = module.network.location
}