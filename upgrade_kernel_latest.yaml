---
- hosts: all
  become: yes
  tasks:
    - name: Execute kernel upgrade script
      script: /path/to/upgrade_kernel_latest.sh
      args:
        executable: /bin/bash

    - name: Reboot the server if needed
      reboot:
        msg: "Rebooting to apply the new kernel"
        pre_reboot_delay: 10
