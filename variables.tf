variable "vm_size" {
  type = string 
  default = "Standard_D2_v2"
  description = "Taille de ma machine virtuelle"
}

variable "region" {
  default = "West Europe"
  type = string 
  description = "ma region"
}

variable "https_port" {
  default = "443"
  type = string 
  description = "https_port"
}

variable "http_port" {
  default = "80"
  type = string 
  description = "http_port"
}

variable "ssh_port" {
  default = "22"
  type = string 
  description = "ssh_port"
}

variable "admin_password" {
  default = ""
  type = string 
  description = "admin_password"
}

variable "admin_username" {
  default = "default"
  type = string 
  description = "admin_username"
}