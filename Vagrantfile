Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, :path => "bootstrap.sh", privileged: false

  # copy keys from dropbox
  config.vm.provision "file", source: "~/.ssh/bmanazar.pem", destination: "/home/vagrant/.ssh/bmanazar.pem"
  config.vm.provision "shell", inline: "chmod 0400 /home/vagrant/.ssh/bmanazar.pem"
  
  # homefolder
  config.vm.synced_folder "/Users/bmanazar/", "/home/vagrant/bmanazar"
end
