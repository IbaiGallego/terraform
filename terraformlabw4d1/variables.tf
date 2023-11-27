variable "region" {
  type    = string
  default = "West Europe"
}

variable "resource_group_name" {
  type    = string
  default = "rg-ibai"
}

variable "vm_size" {
  type    = string
  default = "Standard_DS2_v2"
}

variable "v_net" {
    type = string
    default = "vnet-ibai"
}

variable "subnet1" {
    type = string
    default = "subnet1"
}

variable "subnet2" {
    type = string
    default = "subnet2"
}

variable "nsg" {
    type = string
    default = "nsg-ibai"
}

variable "public_ip_name" {
    type = string
    default = "ip-ibai"
}

variable "nic_name" {
    type = string
    default = "nic-ibai"
}

variable "storage_account_name" {
    type = string
    default = "ibai19990107"
}

variable "vm_name" {
    type = string
    default = "vm-ibai"
}