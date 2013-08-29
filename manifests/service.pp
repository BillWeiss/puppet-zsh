# == Class zsh::service
#
# This class is meant to be called from zsh
# It ensure the service is running
#
class zsh::service {
  include zsh::params

  service { $zsh::params::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
