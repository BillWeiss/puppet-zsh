# == Class: zsh
#
# Full description of class zsh here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class zsh (
) inherits zsh::params {

  # validate parameters here

  class { 'zsh::install': } ->
  class { 'zsh::config': } ->
  Class['zsh']
}
