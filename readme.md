# Laravel Homestead forked for Softec S.p.A.

The official Laravel local development environment.

Official documentation [is located here](http://laravel.com/docs/homestead).

### Software

Included Software (in the original homestead)

 * Ubuntu 16.04
 * Git
 * PHP 7.0
 * Nginx
 * MySQL
 * MariaDB
 * Sqlite3
 * Postgres
 * Composer
 * Node (With PM2, Bower, Grunt, and Gulp)
 * Redis
 * Memcached
 * Beanstalkd


From the forked version

 * yarn
 * MongoDB


## Quickstart

### Software required

 * [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
 * [Vagrant](https://www.vagrantup.com/downloads.html)

For on halt dump with Vagrant Triggers

 * mysqldump
 * pg_dump

### Installation

 * add of Vagrant base machine
    > vagrant box add laravel/homestead
 * clone of Vagrant box
    > git clone https://github.com/softecspa/homestead.git HomesteadSoftecspa
 * enter the Vagrant directory
    > cd HomesteadSoftecspa
 * initialize of homestead tool, it will create a ~/.homestead_softecspa directory with the Homestead.yml configuration file
    > bash init.sh
 * edit the ~/.homestead_softecspa/Homestead.yml file
 * launch the vagrant machine
    > vagrant up
 * enter the vagrant machine
    > vagrant ssh
 * stop the vagrant machine
    > vagrant halt
 * add to the hosts file
    > 192.168.10.13     servername

### Configuration

 * ip: ip of virtual machine, useful for mapping in file hosts [192.168.10.13]
 * memory: [4096]
 * cpus: [4]
 * provider: [virtualbox]
 * name: [homestead-7-softecspa]
 * mariadb: [true]
 * mongodb: [true]
 * yarn: [true]
 * dumpdbonhalt: [true]
 * authorize: [~/.ssh/id_rsa.pub]
 * keys: [~/.ssh/id_rsa]
 * folders: mapping between local directory and remote mount point
 * sites: mapping between server name and public remote mount point
 * databases: db name, db type [mysql|postgresql], backup directory


## Extensions

### Vagrant Triggers

[Vagrant Triggers](https://github.com/emyl/vagrant-triggers)

    $ vagrant plugin install vagrant-triggers
