# == Class riak2::params
#
# This class is meant to be called from riak2.
# It sets variables according to platform.
#
class riak2::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'riak2'
      $service_name = 'riak2'
    }
    'RedHat', 'Amazon': {
      $package_name = 'riak2'
      $service_name = 'riak2'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
