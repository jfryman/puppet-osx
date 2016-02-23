# Public: Enable Three Finger Look up & data detectors
class osx::touchpad::gestures::enable_three_finger_look_up {
  $effect_int = 2

  boxen::osx_defaults { 'Enable the Ability to Three Finger Look up & data sectors':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadThreeFingerTapGesture',
    value  => $effect_int,
  }
}
