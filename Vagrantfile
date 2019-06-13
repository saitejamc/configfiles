#vagrant plugin install vagrant-disksize
Vagrant.configure("2") do |config|
  config.vm.define "vagrant01" do |config|
    config.vm.box = "archlinux/archlinux"
    config.vm.hostname = "vagrant01"
    config.vm.network "private_network", ip: "192.168.33.10"
    #config.vm.network "public_network"
    #config.vm.synced_folder "/Users/saiteja/Documents/workspace/docker/ansible/roles/", "/roles" , type: "rsync"
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end
  end
    config.vm.provision "shell", inline: <<-SHELL
      cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
    SHELL
  end

Vagrant.configure("2") do |config|
  config.vm.define "vagrant02" do |config|
    config.vm.box = "ubuntu/bionic64"
    config.vm.hostname = "vagrant-ubuntu"
    config.disksize.size = '20GB'
    config.vm.network "private_network", ip: "192.168.33.11"
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "6144"
    end
  end
    config.vm.provision "shell", inline: <<-SHELL
      cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
	cp /vagrant/id_rsa /home/vagrant/.ssh/id_rsa
	cp /vagrant/id_rsa.pub /home/vagrant/.ssh/id_rsa.pub
    SHELL
  end


Vagrant.configure("2") do |config|
  config.vm.define "vagrant03" do |config|
    config.vm.box = "ubuntu/bionic64"
    config.vm.hostname = "vagrant-ubuntu"
    #config.disksize.size = '20GB'
    config.vm.network "private_network", ip: "192.168.33.12"
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end
  end
    config.vm.provision "shell", inline: <<-SHELL
      cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
	cp /vagrant/id_rsa /home/vagrant/.ssh/id_rsa
	cp /vagrant/id_rsa.pub /home/vagrant/.ssh/id_rsa.pub
	chown vagrant: /home/vagrant/.ssh/id_rsa*
	apt-get update && apt-get install -y git vim
    SHELL
  end
