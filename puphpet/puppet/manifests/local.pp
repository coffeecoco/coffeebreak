include redis
include kannel
include smsapp

class { 'apache':
  default_mods => true,
mpm_module => 'prefork',
}
include apache::mod::php


php::ini { '/etc/php.ini':
register_globals => on
}


package {"gdebi":
 ensure   => installed,
}
