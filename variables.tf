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

variable "vm_name" {
  description = "VM Names"
  default     = "serverik-"
  type        = string
}

variable "vm_count" {
  description = "Number of Virtual Machines"
  default     = 3
  type        = string
}
