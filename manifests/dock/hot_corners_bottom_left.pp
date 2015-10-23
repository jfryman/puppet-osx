# Public: Set the bottom left hot corner to action
class osx::dock::hot_corners_bottom_left(
  $only_with_modifier = false,
  $action = 'do nothing') {

  $corner_abbreviation = 'bl'
  case $action {
    'do nothing':                { $action_int = 0 }
    'mission control':           { $action_int = 2 }
    'show application windows':  { $action_int = 3 }
    'desktop':                   { $action_int = 4 }
    'start screensaver':         { $action_int = 5 }
    'disable screensaver':       { $action_int = 6 }
    'dashboard':                 { $action_int = 7 }
    'sleep display':             { $action_int = 10 }
    'launchpad':                 { $action_int = 11 }
    'notification center':       { $action_int = 12 }
    default:                     { $action_int = $action }
  }

  case $only_with_modifier {
    true:    { $modifier_int = 1 }
    default: { $modifier_int = 0 }
  }

  boxen::osx_defaults { "Set the left hot corner to ${action}":
    user   => $::boxen_user,
    key    => "wvous-${corner_abbreviation}-corner",
    domain => 'com.apple.dock',
    type   => 'int',
    value  => $action_int,
  }

  boxen::osx_defaults { "Set the modifier for the left hot corner to ${only_with_modifier}":
    user   => $::boxen_user,
    key    => "wvous-${corner_abbreviation}-modifier",
    domain => 'com.apple.dock',
    type   => 'int',
    value  => $modifier_int,
  }
}
