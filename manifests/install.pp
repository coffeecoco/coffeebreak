
class kannel::install {
  package { [ 'screen', 'strace', 'sudo', 'hiredis-devel.x86_64', 'curl', 'nano' ]:
  ensure => 'present',
}
}

