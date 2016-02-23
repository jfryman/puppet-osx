# Public: Disable the Ability to Pinch with Thumb and Three Fingers for Launchpad
class osx::touchpad::gestures::disable_launchpad {
  boxen::osx_defaults { 'Disable the Ability to Pinch with Thumb and Three Fingers for Launchpad':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'showLaunchpadGestureEnabled',
    value  => false,
  }
}
