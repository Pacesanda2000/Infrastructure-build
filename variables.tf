variable "vsphere_user" {
  type        = string
  default     = "dmajoros"
  description = "username"
}

variable "vsphere_server" {
  type        = string
  default     = "vlab.dual.edu"
  description = "server"
}

variable "vsphere_password" {
  type        = string
  description = "password"
}

variable "vm_count_worker" {
  description = "Number of Worker VMs"
  default     = 2
  type        = string
}

variable "vm_count_master" {
  description = "Number of Master VMs"
  default     = 1
  type        = string
}
