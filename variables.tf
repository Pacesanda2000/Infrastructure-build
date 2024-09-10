#### GENERAL VARIABLES ####

variable "vsphere_user" {             #nazov premennej
  type        = string                #typ premennej
  default     = "userXYZ"             #hodnota premennej
  description = "IT lab username"     #popis premennej
}

variable "vsphere_server" {
  type        = string
  default     = "IpXYZ"
  description = "IT lab server IP"
}

variable "vsphere_password" {
  type        = string
  description = "IT lab password "
}

variable "vm_folder" {
  type        = string
  default     = "folderXYZ"
  description = "Folder where VMs will be placed"
}

variable "bucket_name" {
  type        = string
  default     = "bucketXYZ"
  description = "Name of S3 bucket in AWS"
}

variable "region" {
  type        = string
  default     = "regionXYZ"
  description = "Region used in AWS"
}

variable "dynamodb_table_name" {
  type        = string
  default     = "tableXYZ"
  description = "Name of DynamoDB table in AWS"
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
