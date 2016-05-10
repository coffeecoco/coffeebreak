# Class: kannel_smpp
#
# This module manages kannel_smpp
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class kannel::config(
  $dlr_storage = "redis",
  $smsc_username = "",
  $smsc_password = "bbb",
  $smsc_http_port = "1001",
  $redis_host = "localhost",
  $redis_port = "6379",
  $kannel_admin_port = "13010",
  $kannel_smsbox_port = "1002",
  $kannel_admin_pwd = "foobar",
  $sms_stat_pwd = foobar,
  $hub_listen_port = 13012,
  $kannel_ip = "localhost",
  $sendsms_port = 13013,
  $redis_ip = "localhost",
  $smsbox_port = "15000",
)

{

file { ["/opt/kannel/", "/opt/kannel/etc/"]:
            ensure => directory,
             }
             
file { '/opt/kannel/etc/kannel.conf':
    content => template('kannel/kannel.conf.erb'),
    ensure  => file,
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }
  }

