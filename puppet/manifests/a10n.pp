# Version:  $Id$

class webapp::a10n {

    file {
        '/etc/supervisord.conf':
            source => '/vagrant/puppet/files/supervisord.conf',
            notify => Service[supervisord];

        '/home/vagrant/.hgrc':
            source => '/vagrant/puppet/files/dot.hgrc';

        '/src/l10n/a10n/a10n/settings/local.py':
            source => '/vagrant/puppet/files/local.py';
    }

    service {
        'supervisord':
            ensure => running,
            require => Package['supervisor'];

        'rabbitmq-server':
            ensure => running,
            require => Package['rabbitmq-server'];
    }

    user {
      'a10n':
        ensure => present,
        system => true;
    }

    yumrepo {
      'EPEL':
          baseurl  => 'http://dl.fedoraproject.org/pub/epel/$releasever/$basearch',
          descr    => 'EPEL',
          enabled  => 1,
          gpgcheck => 0,
          timeout  => 60;
    }

    package {
        [
         'mysql-devel',
         'mysql-server',
        ]:
        ensure => latest;
    }
    package {
        [
         'python-virtualenv',
         'rabbitmq-server',
         'supervisor',
        ]:
        ensure => latest,
        require => [ YumRepo['EPEL'] ]
    }
}
