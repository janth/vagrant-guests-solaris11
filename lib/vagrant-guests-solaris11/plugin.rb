# A general Vagrant system implementation for "solaris 11".
#
# Contributed by Jan Thomas Moldung <janth@moldung.no>

require "vagrant"

module VagrantPlugins
  module GuestSolaris11
    class Plugin < Vagrant.plugin("2")
      name "Solaris 11 guest"
      description "Oracle Solaris 11 guest support."

      #config("solaris11") do
      #  require File.expand_path("../config", __FILE__)
      #  Config
      #end

      guest("solaris11")  do
        #require File.expand_path("../guest", __FILE__)
        require_relative "guest"
        Guest
      end

      guest_capability("solaris11", "change_host_name") do
        require_relative "cap/change_host_name"
        Cap::ChangeHostName
      end

      guest_capability("solaris11", "configure_networks") do
        require_relative "cap/configure_networks"
        Cap::ConfigureNetworks
      end

      guest_capability("solaris11", "halt") do
        require_relative "cap/halt"
        Cap::Halt
      end

      guest_capability("solaris11", "mount_virtualbox_shared_folder") do
        require_relative "cap/mount_virtualbox_shared_folder"
        Cap::MountVirtualBoxSharedFolder
      end

      #guest_capability("solaris11", "mount_nfs_folder") do
      #  require_relative "cap/mount_nfs_folder"
      #  Cap::MountNFSFold
      #end

    end
  end
end
