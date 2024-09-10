#### WORKER'S CREATION ####

resource "vsphere_virtual_machine" "worker" {
  count            = var.vm_count_worker
  name             = "worker${count.index + 1}"
  num_cpus         = var.vm_cpu_worker
  memory           = var.vm_memory_worker #
  folder           = var.vm_folder
  datastore_id     = data.vsphere_datastore.datastore.id
  resource_pool_id = data.vsphere_resource_pool.pool.id
  guest_id         = data.vsphere_virtual_machine.template.guest_id
  scsi_type        = data.vsphere_virtual_machine.template.scsi_type
  boot_delay       = 0
  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout  = 0

  network_interface {
    network_id = data.vsphere_network.network.id
    adapter_type  = "vmxnet3"
  }

  disk {
    label = "worker.vmdk"
    size  = var.vm_disk_size_worker
    thin_provisioned = true
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
    customize {
      timeout = 0
      linux_options {
        host_name = "worker${count.index + 1}"
        domain    = "domainXYZ"
      }
      network_interface {
      }
      ipv4_gateway = "IpXYZ"
    }
  }
}
