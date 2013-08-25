
## Vagrant Oracle Solaris 11 guest Provider

Vagrant >= 1.x has a built-in Oracle Solaris plugin, but the plugin lacks the ability to set hostname and confgure network on Oracle Solaris 11+

This is a [Vagrant](http://www.vagrantup.com) 1.2+ plugin that adds an [Solaris 11](http://www.oracle.com/us/products/servers-storage/solaris/solaris11/overview/index.html)
guest to Vagrant, allowing Vagrant to control Oracle Solaris 11.

**NOTE:** This plugin requires Vagrant 1.2+,

### Installation
with vagrant plugin from http://rubygems.org/

```bash
vagrant plugin install vagrant-guests-solaris11
```

### Features

* Set hostname and configure network in Oracle Solaris 11.

### Usage
Add this line to your Vagrantfile:

```ruby
Vagrant.require_plugin "vagrant-guests-solaris11"
Vagrant.configure("2") do |config|
   config.vm.guest = :solaris11
```

### Changelog

##### 0.0.1 (2013-08-25)

 * Initial release

