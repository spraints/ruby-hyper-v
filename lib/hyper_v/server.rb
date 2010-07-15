require 'ruby-wmi'

module HyperV
  class Server
    def initialize(host)
      @host = host
    end

    def virtual_machines
      vms = WMI::Msvm_ComputerSystem.find(:all, :host => @host, :class => 'root\\virtualization')
      vms.collect { |vm| VirtualMachine.new(vm) }
    end
  end
end
