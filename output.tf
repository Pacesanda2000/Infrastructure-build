output "master_ip_addresses" {
  value = flatten([
    for vm in vsphere_virtual_machine.master : vsphere_virtual_machine.master${count.index + 1}.name
  ])
}

output "worker_ip_addresses" {
  value = flatten([
    for vm in vsphere_virtual_machine.worker : vsphere_virtual_machine.worker${count.index + 1}.name
  ])
}
