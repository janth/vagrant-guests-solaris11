require 'spec_helper'
require 'vagrant-guests-solaris11/guest'

describe VagrantPlugins::GuestSolaris11::Guest do
  include_context 'machine'

  it "should be detected with SunOS" do
    expect(communicate).to receive(:test).with('[ "$(uname -s)" = "SunOS" ]')
    guest.detect?(machine)
  end
end
