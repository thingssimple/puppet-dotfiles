include homebrew

class dotfiles {
  homebrew::tap { 'thoughtbot/formulae': }

  package { 'rcm':
    ensure => present
  }

  exec { 'rcup':
    command => 'rcup',
  }
}
