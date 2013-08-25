require 'spec_helper'
require 'vagrant-guests-solaris11/plugin'
require 'vagrant-guests-solaris11/cap/change_host_name'
require 'vagrant-guests-solaris11/cap/configure_networks'
require 'vagrant-guests-solaris11/cap/halt'
require 'vagrant-guests-solaris11/cap/mount_virtualbox_shared_folder'
#require 'vagrant-guests-solaris11/cap/mount_nfs_folder'

describe VagrantPlugins::GuestSolaris11::Plugin do
  [:solaris11].each do |os|
    it "should be loaded with #{os}" do
      expect(described_class.components.guests[os].first).to eq(VagrantPlugins::GuestSolaris11::Guest)
    end

    {
      :halt               => VagrantPlugins::GuestSolaris11::Cap::Halt,
      :change_host_name   => VagrantPlugins::GuestSolaris11::Cap::ChangeHostName,
      :configure_networks => VagrantPlugins::GuestSolaris11::Cap::ConfigureNetworks,
      :mount_nfs_folder   => VagrantPlugins::GuestSolaris11::Cap::MountVirtualBoxSharedFolder,
      #:mount_nfs_folder   => VagrantPlugins::GuestSolaris11::Cap::MountNFSFolder,
    }.each do |cap, cls|
      it "should be capable of #{cap} with #{os}" do
        expect(described_class.components.guest_capabilities[os][cap])
          .to eq(cls)
      end
    end
  end
end
