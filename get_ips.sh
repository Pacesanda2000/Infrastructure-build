#!/bin/bash

# Funkce pro získání IP adresy pomocí DNS dotazu
get_ip_address() {
    host "$1" | awk '/has address/ {print $4}'
}

# Získání IP adres ze souboru s výstupy Terraform a uložení do souboru
for vm_name in $(cat master_ip_addresses.json worker_ip_addresses.json); do
    ip_address=$(get_ip_address "$vm_name")
    echo "IP adresa pro stroj $vm_name: $ip_address"
    echo "$vm_name,$ip_address" >> "${TF_VAR_working_directory}/ip_addresses.csv"
done
