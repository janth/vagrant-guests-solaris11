# A general Vagrant system implementation for "solaris 11".
#
# Contributed by Jan Thomas Moldung <janth@moldung.no>

module VagrantPlugins
  module GuestSolaris11
    module Cap
      class MountVirtualBoxSharedFolder
        def self.mount_virtualbox_shared_folder(machine, name, guestpath, options)
          # These are just far easier to use than the full options syntax
          owner = options[:owner]
          group = options[:group]

          # Create the shared folder
          machine.communicate.sudo("mkdir -p #{guestpath}")

          # We have to use this `id` command instead of `/usr/bin/id` since this
          # one accepts the "-u" and "-g" flags.
          id_cmd        = "/usr/xpg4/bin/id"

          # Mount the folder with the proper owner/group
          mount_options = "-o uid=`#{id_cmd} -u #{owner}`,gid=`#{id_cmd} -g #{group}`"
          mount_options += ",#{options[:extra]}" if options[:extra]
          machine.communicate.sudo("/sbin/mount -F vboxfs #{mount_options} #{name} #{guestpath}")

          # chown the folder to the proper owner/group
          machine.communicate.sudo("chown `#{id_cmd} -u #{owner}`:`#{id_cmd} -g #{group}` #{guestpath}")
        end
      end
    end
  end
end
