#### VM CREATION ####

resource "vsphere_virtual_machine" "worker" {
  count            = "2"
  name             = "worker${count.index + 1}"
  num_cpus         = 4
  memory           = 4096
  folder           = "3.rocnik/3.rocnik_projekty/dmajoros"
  annotation       = "Automatically generated via Terraform by dmajoros"
  datastore_id     = data.vsphere_datastore.datastore.id
  resource_pool_id = data.vsphere_resource_pool.pool.id
  guest_id         = data.vsphere_virtual_machine.template.guest_id
  scsi_type        = data.vsphere_virtual_machine.template.scsi_type
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout  = 0
  wait_for_guest_net_routable = false
  ignored_guest_ips = ["127.0.0.1"]


  network_interface {
    network_id = data.vsphere_network.network.id
    adapter_type  = "vmxnet3"
  }

  disk {
    label = "worker.vmdk"
    size  = "20"
    thin_provisioned = false
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id

    customize {
      linux_options {
        host_name = "worker${count.index + 1}"
        domain    = "vlab.dual.edu"
      }
      network_interface {
        ipv4_address  = "10.207.0.${301 + count.index}"
        ipv4_netmask  = 24
        #dns_server_list = ["172.29.0.101", "172.29.0.103"]
      }

      ipv4_gateway = "172.27.16.254"
    }
  }
}
