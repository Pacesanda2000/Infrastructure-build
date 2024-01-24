output "master_ip_addresses" {
  value = [
    for vm in vsphere_virtual_machine.master : vm.network_interface[1].ipv4_address
  ]
}

output "worker_ip_addresses" {
  value = [
    for vm in vsphere_virtual_machine.worker : vm.network_interface[1].ipv4_address
  ]
}
