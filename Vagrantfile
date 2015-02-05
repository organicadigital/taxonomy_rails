Vagrant.configure(2) do |config|

  config.vm.box = 'ubuntu/trusty64'

  config.vm.provider 'virtualbox' do |virtualbox|
    virtualbox.memory = 1024
    virtualbox.cpus = 2
  end

  config.vm.define 'development' do |development|
    development.vm.network :forwarded_port, guest: 3000, host: 3000

    development.vm.provision :ansible do |ansible|
      ansible.playbook = 'ansible/site.yml'
      ansible.inventory_path = 'ansible/development'
    end
  end

end
