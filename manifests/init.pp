include homebrew

class dotfiles {
  homebrew::tap { 'thoughtbot/formulae': }
  package { 'rcm'
    ensure => present
  }
}
