variable "region" {
  default = "West Europe"
}

variable "rg" {
  default = "RG_name"
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
