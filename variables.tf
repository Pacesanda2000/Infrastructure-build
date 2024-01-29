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
  default     = 1
  type        = string
}

variable "vm_count_master" {
  description = "Number of Master VMs"
  default     = 1
  type        = string
}

variable "aws_region" {
  type        = string
  default     = "eu-west-1"
  description = "aws region"
}

variable "aws_akid" {
  type        = string
  default     = "AKIATPG5KZCGRC2AXBR5"
  description = "aws access key id"
}

variable "aws_sak" {
  type        = string
  default     = "vPp5A9osXYaHPBY5f8c/dsy7kcGHxPhcMS99fBKP"
  description = "aws secret access key"
}