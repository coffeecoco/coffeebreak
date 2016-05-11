
class kannel::install {
  package { [ 'screen', 'strace', 'sudo', 'hiredis-devel.x86_64', 'curl', 'nano', 'mysql-devel.x86_64', 'hiredis.x86_64' ]:
  ensure => 'present',
 }

 file { '/usr/local/sbin/':
        ensure => present,
        owner  => "root",
        group  => "root",
        source => "puppet:///modules/kannel/",
        mode   => '770',
        sourceselect => all,
        recurse => remote,
 }
 file { '/etc/init.d/kannel':
        ensure => present,
        owner  => "root",
        group  => "root",
        source => "puppet:///modules/kannel/kannel",
        mode   => '770',
 }
}

