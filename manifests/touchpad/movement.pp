# Public: Sets the Speed With Which Trackpad Movement Moves the Cursor
class osx::touchpad::movement(
  $scaling         = undef,
  $scrolling_speed = undef) {

  if $scaling != undef {
    boxen::osx_defaults { 'Sets the Speed With Which Trackpad Movement Moves the Cursor':
      user   => $::boxen_user,
      domain => 'NSGlobalDomain',
      key    => 'com.apple.trackpad.scaling',
      type   => 'float',
      value  => $scaling,
    }
  }

  if $scrolling_speed != undef {
    boxen::osx_defaults { 'Sets the Speed With Which the Trackpad Scrolls Content':
      user   => $::boxen_user,
      domain => 'NSGlobalDomain',
      key    => 'com.apple.trackpad.scrolling',
      type   => 'float',
      value  => $scrolling_speed,
    }
  }
}
