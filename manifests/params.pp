# == Class zsh::params
#
# This class is meant to be called from zsh
# It sets variables according to platform
#
class zsh::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'zsh'
      $service_name = 'zsh'
    }
    'RedHat', 'Amazon': {
      $package_name = 'zsh'
      $service_name = 'zsh'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
