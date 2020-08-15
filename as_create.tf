#Create Availabilty Sets for controller nodes and worker nodes

resource "azurerm_availability_set" "kube_as" {

  resource_group_name = var.rg
  location            = var.region

   count = length(var.res_type)
   name =  "${var.res_type[count.index]}-as" 

}