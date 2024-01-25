output "master_ip_addresses" {
  value = flatten([
    for vm in vsphere_virtual_machine.master : vm.name : vm.memory
  ])
}

output "worker_ip_addresses" {
  value = flatten([
    for vm in vsphere_virtual_machine.worker : vm.name 
  ])
}
