require 'vagrant-guests-solaris11/cap/halt'
require 'spec_helper'

describe VagrantPlugins::GuestSolaris11::Cap::Halt do
  include_context 'machine'

  it "should halt guest using '/usr/sbin/shutdown -y -i5 -g0'" do
    communicate.should_receive(:sudo).with("/usr/sbin/shutdown -y -i5 -g0")
    described_class.halt(machine)
  end
end
