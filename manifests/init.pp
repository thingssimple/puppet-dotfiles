include homebrew

class dotfiles {
  homebrew::tap { 'thoughtbot/formulae': }

  package { 'rcm':
    ensure => present
  }

  $home = "/Users/${::boxen_user}"

  exec { 'rcup':
    command => 'rcup',
    require => File["${home}/.dotfiles"],
  }
}
