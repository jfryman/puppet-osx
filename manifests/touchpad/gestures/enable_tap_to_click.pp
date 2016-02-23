# Public: Enable Tap to Click
class osx::touchpad::gestures::enable_tap_to_click {
  boxen::osx_defaults { 'Enable the Ability to Tap the Touchpad to Click - Part 1':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.mouse.tapBehavior',
    value  => 1,
  }

  boxen::osx_defaults { 'Enable the Ability to Tap the Touchpad to Click - Part 2':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'Clicking',
    type   => 'int',
    value  => 1,
  }

  boxen::osx_defaults { 'Enable the Ability to Tap the Touchpad to Click - Part 3':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.mouse.tapBehavior',
    host   => 'currentHost',
    type   => 'int',
    value  => 1,
  }
}
