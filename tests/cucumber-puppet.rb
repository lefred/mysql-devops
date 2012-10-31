require 'rubygems'
require 'vagrant'

env = Vagrant::Environment.new
env.vms.values.each do |vm|
   if vm.created?
	if vm.state == :running
	  puts "is running"
          vm.channel.sudo("cd /vagrant; cucumber-puppet features modules/*/features > cucumber.out")
        end
   end
end

