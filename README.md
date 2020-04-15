# bolt-demo
A quick bolt demo to fix some issues with the classroom Windows machines machines.

# What does it do
* Uses [chocolatey](https://chocolatey.org/) to install openssh.
* Uses [chocolatey](https://chocolatey.org/) to upgrade the pdk.
* Uninstalls Windows Defender.
* Forces a restart **this will kick out any logged in users**.

# What you need to do
A git clone of this should give you everything you need, you just need to ensure all your target nodes are listed under **nodes** and set the **password** in the inventory.yaml. 
**DO NOT INCLUDE THE HOST YOU ARE RUNNING THIS FROM IN THE INVENTORY**

# How to run it
```
bolt script run fix.ps1 --targets windows
bolt command run uptime --targets linux
```
