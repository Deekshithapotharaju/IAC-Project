output "resource_group_name" {
  value = module.network.resource_group_name
}

output "location" {
  value = module.network.location
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "vm_public_ip" {
  value = module.compute.public_ip
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}

output "database_name" {
  value = module.database.db_name
}