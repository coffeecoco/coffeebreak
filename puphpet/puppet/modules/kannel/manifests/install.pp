
class kannel::install {
  package { [ 'screen', 'strace', 'sudo', 'libhiredis-dev', 'curl', 'nano' , 'libmysqlclient-dev' ]:
  ensure => 'present',
 }

file { '/tmp/kannel.deb':
 ensure =>  present,
 source   => "puppet:///modules/kannel/kannel_1.5.0-0_amd64.deb",
}
->
package { 'kannel':
    provider => gdebi,
    source   => "/tmp/kannel.deb",
}
->
file { '/etc/default/kannel':
 ensure =>  present,
 source   => "puppet:///modules/kannel/kannel_default",
 require => Package["kannel"],
notify => Service["kannel"],
}
->
file { '/tmp/kannel':
 ensure =>  directory,
notify => Service["kannel"],
}
}
