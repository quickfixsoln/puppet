# puppet

repos:
https://apt.puppetlabs.com/


debrepo:

https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb

dpkg -i puppetlabs-release-pc1-trusty.deb

apt-get update

apt-get install puppet-agent puppetserver


puppet resource service pupperserver ensure=running

puppet resource service pupperserver enable=true



agent :

 apt-get install puppet-agent 
 
 puppet resource service puppet ensure=running

 puppet resource service pupper enable=true
 
