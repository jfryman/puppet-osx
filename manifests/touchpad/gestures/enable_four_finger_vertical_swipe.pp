# Public: Sets the Effect for Swiping Up/Down with Four Fingers
class osx::touchpad::gestures::enable_four_finger_vertical_swipe($effect = 'disabled') {
  boxen::osx_defaults { 'Sets the Effect for Swiping Up/Down with Four Fingers - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadFourFingerVertSwipeGesture',
    value  => 0,
  }

  boxen::osx_defaults { 'Sets the Effect for Swiping Up/Down with Four Fingers - Part 2':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.fourFingerVertSwipeGesture',
    host   => 'currentHost',
    value  => 0,
  }
}
