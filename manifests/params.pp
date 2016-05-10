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
# SMSC SMPP
require kannel::install

class kannel::params (
  $smsc_host = "smsglobal.com",
  $smsc_port = "1775",
  $smsc_username = "s3nte5ml",
  $smsc_password = "nsyWz3dC",
  $dlr_storage = "redis",
  $redis_host = "localhost",
  $redis_port = "6379",
  $kannel_admin_port = "13000",
  $kannel_admin_pwd = "foobar",
  $kannel_smsbox_port = "13003",
  $sms_stat_pwd = foobar,
  $sendsms_port = 13002,
  $smsbox_port = "13001",
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

