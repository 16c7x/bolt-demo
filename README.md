# bolt-demo
A quick bolt demo to check the the classroom machines

# What you need to do
* Install bolt on the student0 machine ```sudo yum install puppet-bolt --nogpgcheck -y```
* Follow the instructions on https://puppet.com/docs/bolt/latest/getting_started_with_bolt.html to setup a bolt project.
* Copy the inventory.yaml into a text editor 
    * Do a find and replace to update the hostnames with the classroom name
    * Add in the Windows login details.
    * Copy the file into the inventory.yaml file of the Bolt project.
**The student0 machines are intentionaly left out**

## Linux machines
Check the linux machines are all up ```bolt command run uptime --targets linux```

## Windows machines
Check the windows machines are up ```bolt command run 'choco --version' --targets windows```

# Get the classroom machines through the first few lessons.
There may be a time when you just need to get all the machines connected to the PE server.
## Linux
* To install Bolt on all the Linux machines run ```bolt command run 'yum install puppet-bolt --nogpgcheck -y' --targets linux```
* To install the Puppet agent on all the Linux machines first make the remote script executable ```bolt command run 'chmod +x /home/centos/install_pe_agent.sh' --targets linux```
* Then install it ```bolt command run '/home/centos/install_pe_agent.sh' --targets linux```

## Windows
* To install Bolt on all the Windows machines ```bolt command run 'choco install puppet-bolt' --targets windows```



