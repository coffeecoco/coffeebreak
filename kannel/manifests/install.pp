
class kannel::install {
  package { [ 'screen', 'strace', 'sudo', 'libhiredis-dev', 'curl', 'nano' , 'libmysqlclient-dev ' ]:
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
}

