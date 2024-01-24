output "master_ip_addresses" {
  value = [
    for vm in vsphere_virtual_machine.master : vm.name
  ]
}

output "worker_ip_addresses" {
  value = [
    for vm in vsphere_virtual_machine.worker : vm.name
  ]
}
