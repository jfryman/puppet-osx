# Public: Enable Three Finger Drag
class osx::touchpad::gestures::enable_three_finger_drag {
  boxen::osx_defaults { 'Enable the Ability to Three Finger Drag - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'Dragging',
    value  => true,
  }

  boxen::osx_defaults { 'Enable the Ability to Three Finger Drag - Part 2':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpadx',
    key    => 'TrackpadThreeFingerDrag',
    value  => true,
  }
}
