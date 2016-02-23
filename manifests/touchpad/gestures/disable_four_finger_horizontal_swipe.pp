# Public: Sets the Effect for Swiping Left/Right with Four Fingers
class osx::touchpad::gestures::disable_four_finger_horizontal_swipe {
  boxen::osx_defaults { 'Sets the Effect for Swiping Left/Right with Four Fingers - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadFourFingerHorizSwipeGesture',
    value  => 0,
  }

  boxen::osx_defaults { 'Sets the Effect for Swiping Left/Right with Four Fingers - Part 2':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.fourFingerHorizSwipeGesture',
    host   => 'currentHost',
    value  => 0,
  }
}
