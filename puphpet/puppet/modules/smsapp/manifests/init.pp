class smsapp {
#deploy simple app $date
file { '/var/www/html':
	ensure => present,
        owner  => "www-data",
        group  => "www-data",
        source => "puppet:///modules/smsapp",
        mode   => '770',
        sourceselect => all,
        recurse => remote,
#        seltype => "httpd_config_t",
}
package { 'php5':
  ensure => installed,
}
}
