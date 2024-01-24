value = vsphere_virtual_machine.vm.*.clone.0.customize.0.network_interface.0.ipv4_address

output "ip_addresses" {
  value = flatten([
    for vm in vsphere_virtual_machine.master : vm.network_interface*.ipv4_address,
    for vm in vsphere_virtual_machine.worker : vm.network_interface*.ipv4_address
  ])
}
