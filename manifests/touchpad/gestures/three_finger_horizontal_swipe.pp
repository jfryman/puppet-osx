# Public: Sets the Effect for Swiping Left/Right with Three Fingers
class osx::touchpad::gestures::three_finger_horizontal_swipe($effect = 'switch apps') {
  validate_re($effect, '^(switch pages|switch apps)$', "osx::touchpad::gestures::three_finger_horizontal_swipe([effect] must be switch pages or switch apps, is ${effect}")

  $effect_int = $effect ? {
    'switch pages' => 1,
    default        => 2
  }

  if $effect_int == 1 {
    include osx::touchpad::gestures::page_swiping
  }

  boxen::osx_defaults { 'Sets the Effect for Swiping Left/Right with Three Fingers - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadThreeFingerHorizSwipeGesture',
    value  => $effect_int,
  }

  boxen::osx_defaults { 'Sets the Effect for Swiping Left/Right with Three Fingers - Part 2':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.threeFingerHorizSwipeGesture',
    host   => 'currentHost',
    value  => $effect_int,
  }
}
