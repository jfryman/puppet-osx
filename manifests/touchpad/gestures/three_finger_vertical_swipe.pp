# Public: Sets the Effect for Swiping Up/Down with Three Fingers
class osx::touchpad::gestures::three_finger_vertical_swipe($effect = 'mission control') {
  validate_re($effect, '^(disabled|mission control)$', "osx::touchpad::gestures::three_finger_vertical_swipe([effect] must be switch pages or switch apps, is ${effect}")

  $effect_int = $effect ? {
    'mission control' => 2,
    default           => 0
  }

  boxen::osx_defaults { 'Sets the Effect for Swiping Up/Down with Three Fingers - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadThreeFingerVertSwipeGesture',
    value  => $effect_int,
  }

  boxen::osx_defaults { 'Sets the Effect for Swiping Up/Down with Three Fingers - Part 2':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    host   => 'currentHost',
    key    => 'com.apple.trackpad.threeFingerVertSwipeGesture',
    value  => $effect_int,
  }
}
