# Public: Dark
class osx::dock::dark($ensure = 'present') {
  include osx::dock

  if $ensure == 'present' {
    boxen::osx_defaults { 'Dark dock menu bar and Dock':
      user   => $::boxen_user,
      domain => 'NSGlobalDomain',
      key    => 'AppleInterfaceStyle',
      value  => 'Dark',
      notify => Exec['killall Dock'],
    }
  } else {
    boxen::osx_defaults { 'Dark dock menu bar and Dock':
      ensure => absent,
      user   => $::boxen_user,
      domain => 'NSGlobalDomain',
      key    => 'AppleInterfaceStyle',
      notify => Exec['killall Dock'],
    }
  }
}
