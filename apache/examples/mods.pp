## Default mods

# Base class. Declares default vhost on port 80 and default ssl
# vhost on port 443 listening on all interfaces and serving
# $apache::docroot, and declaring our default set of modules.
class { 'apache':
  default_mods => true,
}

 class {'::apache::mod::php':
    package_name => "php",
    path         => "${::apache::params::lib_path}/libphp5.so ",
}
