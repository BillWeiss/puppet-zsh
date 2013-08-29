# == Class zsh::intall
#
class zsh::install {
  include zsh::params

  package { $zsh::params::package_name:
    ensure => present,
  }
}
