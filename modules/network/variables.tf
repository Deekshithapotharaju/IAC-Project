variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-demo"
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
  default     = "vnet-demo"
}

variable "vnet_address_space" {
  description = "Address space for VNet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "subnet-demo"
}

variable "subnet_address_prefix" {
  description = "Address prefix for subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
variable "route_table_name" {
  description = "Name of the route table"
  default = "rt-demo"
}