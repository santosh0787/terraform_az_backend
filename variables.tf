variable "region" {
  default = "West Europe"
}

variable "rg" {
  default = "Sandbox-Santosh-Ashtaputra"
}

variable "as_names" {
default = ["controller-as", "worker-as"]
}

variable "res_count"{

default = "2"

}

variable "res_type" {

default = ["controller", "worker"]

}