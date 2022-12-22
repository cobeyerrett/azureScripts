#!/bin/bash

declare ResourceGroup=""

#list all vms
az vm list

#list all vms by OS and Adminuser
az vm list -g "$ResourceGroup" --query '[].{Name:name, OS:storageProfile.osDisk.osType, Admin:osProfile.adminUsername}' --output table

#
az vm list -g "$ResourceGroup" --query '[].{Name:name, OS:storageProfile.osDisk.osType, Admin:osProfile.adminUsername}'

#vm sizes
az vm list --query '[].{Name:name, VMSize:hardwareProfile.vmSize, Location:location}' --output table