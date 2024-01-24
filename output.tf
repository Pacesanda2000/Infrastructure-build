output "ip_addresses" {
  value = flatten([
    for vm in vsphere_virtual_machine.master : vm.network_interface[0].ipv4_address,
    for vm in vsphere_virtual_machine.worker : vm.network_interface[0].ipv4_address
  ])
}
