# A general Vagrant system implementation for "solaris 11".
#
# Contributed by Jan Thomas Moldung <janth@moldung.no>

module VagrantPlugins
  module GuestSolaris11
    module Cap
      class ChangeHostName
        def self.change_host_name(machine, name)
          # Only do this if the hostname is not already set
          if !machine.communicate.test("/usr/sbin/svccfg -s system/identity:node listprop config/nodename | /usr/bin/grep '#{name}'")
            machine.communicate.sudo("/usr/sbin/svccfg -s system/identity:node setprop config/nodename=\"#{name}\"")
            machine.communicate.sudo("/usr/sbin/svccfg -s system/identity:node setprop config/loopback=\"#{name}\"")
            machine.communicate.sudo("/usr/sbin/svccfg -s system/identity:node refresh ")
            machine.communicate.sudo("/usr/sbin/svcadm restart system/identity:node ")
          end
        end
      end
    end
  end
end
