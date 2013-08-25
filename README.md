# Vagrant Oracle Solaris 11 guest Provider

Vagrant >= 1.x has a built-in Oracle Solaris plugin, but the plugin lacks the ability to set hostname and confgure network on Oracle Solaris 11+

This is a [Vagrant](http://www.vagrantup.com) 1.2+ plugin that adds an [Solaris 11](http://www.oracle.com/us/products/servers-storage/solaris/solaris11/overview/index.html)
guest to Vagrant, allowing Vagrant to control Oracle Solaris 11.

**NOTE:** This plugin requires Vagrant 1.2+,

## Installation
with vagrant plugin from http://rubygems.org/

```bash
vagrant plugin install vagrant-guests-solaris11
```
   $ vagrant plugin install vagrant-guests-solaris11

## Features

* Set hostname and configure network in Oracle Solaris 11.

## Usage
Add this line to your Vagrantfile:

```ruby
Vagrant.require_plugin "vagrant-guests-solaris11"
Vagrant.configure("2") do |config|
   config.vm.guest = :solaris11
```

## Development

To work on the `vagrant-guests-solaris11` plugin, clone [this repository
out](https://github.com/janth/vagrant-guests-solaris11), and use
[Bundler](http://gembundler.com) to get the dependencies:

```bash
bundle
```

Once you have the dependencies, verify the unit tests pass with `rake`:

```bash
bundle exec rake 
```

Other rake commands:
```bash
bundle exec rake --tasks
bundle exec rake --trace build
bundle exec rake --trace install
bundle exec rake --trace release
```


If those pass, you're ready to start developing the plugin. You can test
the plugin without installing it into your Vagrant environment by just
creating a `Vagrantfile` in the top level of this directory (it is gitignored)
and add the following line to your `Vagrantfile` 
```ruby
Vagrant.require_plugin "vagrant-guests-solaris11"
```
Use bundler to execute Vagrant:
```bash
bundle exec vagrant up <vagranthost>
```

### Changelog


### Fork
