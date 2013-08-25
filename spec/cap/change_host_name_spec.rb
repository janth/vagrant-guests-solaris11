require 'vagrant-guests-solaris11/cap/change_host_name'
require 'spec_helper'

describe VagrantPlugins::GuestSolaris11::Cap::ChangeHostName do
  include_context 'machine'

  it "should change hostname when hostname is differ from current" do
    hostname = 'vagrant-solaris11'
    communicate.stub(:test).and_return(false)
    communicate.should_receive(:sudo).with("/usr/sbin/svccfg -s system/identity:node setprop config/nodename=\"#{name}\"")
    communicate.should_receive(:sudo).with("/usr/sbin/svccfg -s system/identity:node setprop config/loopback=\"#{name}\"")
    communicate.should_receive(:sudo).with("/usr/sbin/svccfg -s system/identity:node refresh ")
    communicate.should_receive(:sudo).with("/usr/sbin/svcadm restart system/identity:node ")
    described_class.change_host_name(machine, hostname)
  end

  it "should not change hostname when hostname equals current" do
    hostname = 'vagrant-solaris11'
    communicate.stub(:test).and_return(true)
    communicate.should_not_receive(:sudo)
    described_class.change_host_name(machine, hostname)
  end
end
