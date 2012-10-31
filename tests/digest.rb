
require 'rubygems'
require 'vagrant'

env = Vagrant::Environment.new
env.vms.values.each do |vm|
   if vm.created?
	if vm.state == :running
	  puts "is running"
          vm.channel.sudo("pt-query-digest /vagrant/tests/slow.log  --execute='h=localhost,u=jenkins,p=jenkins' | grep 'Exec time' | awk 'NR >1 { print $5 }' >/vagrant/results.new")
        end
   end
end

