output "master_ip_addresses" {
  value = [
    for vm in vsphere_virtual_machine.master${count.index + 1}
  ]
}

output "worker_ip_addresses" {
  value = [
    for vm in vsphere_virtual_machine.worker${count.index + 1}
  ]
}
