# Public: Disable the Ability to Swipe to Switch Pages
class osx::touchpad::gestures::disable_page_swiping {
  boxen::osx_defaults { 'Disable the Ability to Swipe to Switch Pages':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleEnableSwipeNavigateWithScrolls',
    value  => 0,
  }
}
