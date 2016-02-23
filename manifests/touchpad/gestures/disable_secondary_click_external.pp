# Public: Disable Secondary "Right" Click on Internal Touchpad'
class osx::touchpad::gestures::disable_secondary_click_external {
  boxen::osx_defaults { 'Disable Secondary "Right" Click on Internal Touchpad':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.enableSecondaryClick',
    value  => false,
  }

  boxen::osx_defaults { 'Disable Secondary "Right" Click on External Touchpad':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadRightClick',
    value  => false,
  }

  boxen::osx_defaults { 'OnButton Secondary "Right" Click on Magic Mouse':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.mouse',
    key    => 'MouseButtonMode',
    value  => 'OneButton',
  }
}
