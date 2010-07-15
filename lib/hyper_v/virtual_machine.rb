module HyperV
  class VirtualMachine
    def initialize(vm)
      @vm = vm
    end

    def name
      @vm.elementName
    end
  end
end
