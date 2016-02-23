# Public: Enable the Ability to Swipe for App Expose
class osx::touchpad::gestures::enable_app_expose {
  boxen::osx_defaults { 'Enable the Ability to Swipe for App Expose':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'showAppExposeGestureEnabled',
    value  => true,
  }
}
