# -*- mode: ruby -*-
# vi: set ft=ruby :

vms = {

  'cliente-externo' => {'memory' => '768', 'cpus' => 1, 'ip' => '200.100.50.150', 'box' => 'debian/stretch64', 'provision' => 'cliente-esterno.sh'},
  'devops' => {'memory' => '512', 'cpus' => 1, 'ip' => '172.16.100.207', 'box' => 'ubuntu/bionic64', 'provision' => 'devops.sh'},
  'lab-gamification'=> {'memory' => '4096', 'cpus' => 1, 'ip' => '172.16.100.210', 'box' => 'centos/7', 'provision' => 'lab-gamification.sh'},
  'mail-server' => {'memory' => '768', 'cpus' => 1, 'ip' => '172.16.100.206', 'box' => 'debian/stretch64', 'provision' => 'mail-server.sh'},
  'proxy-server'=> {'memory' => '768', 'cpus' => 1, 'ip' => '172.16.100.205', 'box' => 'centos/7', 'provision' => 'proxy-server.sh'},
  'security' => {'memory' => '1024', 'cpus' => 1, 'ip' => '172.16.100.201', 'box' => 'debian/stretch64', 'provision' => 'security.sh'},
  'storage' => {'memory' => '1024', 'cpus' => 1, 'ip' => '172.16.100.202', 'box' => 'debian/stretch64', 'provision' => 'storage.sh'},
  'web-server01' => {'memory' => '768', 'cpus' => 1, 'ip' => '172.16.100.203', 'box' => 'debian/stretch64', 'provision' => 'web-server01.sh'},
  'web-server02' => {'memory' => '768', 'cpus' => 1, 'ip' => '172.16.100.204', 'box' => 'debian/stretch64', 'provision' => 'web-server02.sh'},
}

Vagrant.configure('2') do |config|

  config.vm.box_check_update = false

  vms.each do |name, conf|
    config.vm.define "#{name}" do |my|
      my.vm.box = conf['box']
      my.vm.hostname = "#{name}.example.com"
      my.vm.network 'private_network', ip: "#{conf['ip']}"
      my.vm.provision 'shell', path: "provision/#{conf['provision']}"
      my.vm.provider 'virtualbox' do |vb|
        vb.memory = conf['memory']
        vb.cpus = conf['cpus']
      end
      my.vm.provider 'libvirt' do |lv|
        lv.memory = conf['memory']
        lv.cpus = conf['cpus']
        lv.cputopology :sockets => 1, :cores => conf['cpus'], :threads => '1'
      end
    end
  end
end

