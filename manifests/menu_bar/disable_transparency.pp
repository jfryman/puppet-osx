# Need to log out
class osx::menu_bar::disable_transparency {
  include osx::system

  boxen::osx_defaults { 'Enable Menu Bar Transparency':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleEnableMenuBarTransparency',
    value  => false,
    notify => Exec['killall SystemUIServer'];
  }
}
