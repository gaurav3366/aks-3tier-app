variable "prefix" {
    type = string
}
variable "name" {
 type = string
 description = "name of the aks cluster"
}
variable "dns_prefix" {
  type = string
  description = "dns_prefix name"
}
variable "location" {
  type = string
  description = "location name"
}
variable "resource_group_name" {
  type = string
  description = "name of the resource group"
}
variable "node_count" {
  type = number
  description = "number of the node count"
}
variable "vm_size" {
 type = string
  description = "size of the vm"
}
variable "identity" {
  type = string
  description = "identity"
}