#!/usr/bin/env python

import subprocess

def copysshkey():
    keys = "/home/ansible/.ssh/id_rsa.pub"
    sshcp = 'ssh-copy-id'
    user = "iskra@192.168.0.165"

    subprocess.call([sshcp, "-i", keys, user])

def main():
    copysshkey()

if __name__ == "__main__":
    main()
