#!/usr/bin/env python

import subprocess

def inventory():
    ansible = 'ansible'
    inventfile = '/home/ansible/inventory/inventory-lx.yaml'
    logpath = 'logfiles-module-ping.log'
    node   = 'pcmachines'
    module = '-m ping'

    filehandle = open(logpath,"w")

    # ansible pcmachine -m ping -i /home/ansible/inventory/inventory-lx.yaml
    data = subprocess.call([ansible, node, module, "-i", inventfile],stdout=filehandle)

    filehandle.write(data)
    filehandle.close()

def main():
    inventory()

if __name__ == "__main__":
    main()
