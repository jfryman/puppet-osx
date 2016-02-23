# Public: Disable the Bouncing Application Icons
class osx::dock::icon_bounce {
  include osx::dock

  boxen::osx_defaults { 'Disable the Bouncing Application Icon on Launch':
    user   => $::boxen_user,
    key    => 'launchanim',
    domain => 'com.apple.dock',
    value  => false,
    notify => Exec['killall Dock'];
  }

  boxen::osx_defaults { 'Disable the Bouncing Application Icon on Activity':
    user   => $::boxen_user,
    key    => 'no-bouncing',
    domain => 'com.apple.dock',
    value  => true,
    notify => Exec['killall Dock'];
  }
}
