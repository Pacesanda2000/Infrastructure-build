output "master_ip_addresses" {
  value = flatten([
    for vm in vsphere_virtual_machine.master : vm.clone.network_interface[*].ipv4_address
  ])
}

output "worker_ip_addresses" {
  value = flatten([
    for vm in vsphere_virtual_machine.worker : vm.clone.network_interface[*].ipv4_address
  ])
}
