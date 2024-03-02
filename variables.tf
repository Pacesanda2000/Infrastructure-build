#### GENERAL VARIABLES ####

variable "vsphere_user" {
  type        = string
  default     = "dmajoros"
  description = "username"
}

variable "vsphere_server" {
  type        = string
  default     = "172.27.16.210"
  description = "server"
}

variable "vsphere_password" {
  type        = string
  description = "password"
}

variable "vm_folder" {
  type        = string
  default     = "3.rocnik/3.rocnik_projekty/dmajoros"
  description = "Folder where VMs will be placed"
}

#### WORKER'S VARIABLES ####

variable "vm_count_worker" {
  type        = string
  default     = 2
  description = "Number of worker's VMs"
}

variable "vm_cpu_worker" {
  type        = string
  default     = 2
  description = "Number of CPUs on worker's VMs"
}

variable "vm_memory_worker" {
  type        = string
  default     = 2048
  description = "Number of memory on worker's VMs"
}

variable "vm_disk_size_worker" {
  type        = string
  default     = 30
  description = "Number of disk size on worker's VMs"
}

#### MASTER'S VARIABLES ####
variable "vm_count_master" {
  type        = string
  default     = 3
  description = "Number of master's VMs"
}

variable "vm_cpu_master" {
  type        = string
  default     = 4
  description = "Number of CPUs on master's VMs"
}

variable "vm_memory_master" {
  type        = string
  default     = 4096
  description = "Number of memory on master's VMs"
}

variable "vm_disk_size_master" {
  type        = string
  default     = 100
  description = "Number of disk size on master's VMs"
}
