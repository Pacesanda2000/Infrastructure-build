#### DATA INFORMATION FROM VCENTER ####

data "vsphere_datacenter" "dc" {
  name = "dualDC"
}

data "vsphere_resource_pool" "pool" {
  name          = "3.year_PROJECTs"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_datastore" "datastore" {
  name          = "3.year_PROJECTS"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = "3.year_PROJECTs"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "template" {
  name          = "TemplateLinuxCentOS7"
  datacenter_id = data.vsphere_datacenter.dc.id
}
