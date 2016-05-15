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

#typically all of these params will be managed in Hiera #simple TODO
require kannel::install


class kannel::params (
  $smsc_host = "smsglobal.com",
  $smsc_port = "1775",
  $smsc_username = "vomcy5zq",
  $smsc_password = "tk2Tgx9T",
#  $dlr_storage = "redis",
#  $redis_host = "localhost",
#  $redis_port = "6379",
  $kannel_admin_port = "13000",
  $kannel_admin_pwd = "foobar",
  $kannel_smsbox_port = "13003",
  $sms_stat_pwd = foobar,
  $sendsms_port = 13002,
  $smsbox_port = "13001",
)
{
file { '/etc/kannel/kannel.conf':
    content => template('kannel/kannel.conf.erb'),
    ensure  => file,
    owner => 'root',
    group => 'root',
    mode  => '0644',
require => Package["kannel"],
notify => Service["kannel"],
  }
             
  }

