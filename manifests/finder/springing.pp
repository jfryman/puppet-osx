# Public: Enable Springing
class osx::finder::springing(
  $delay  = undef) {

  boxen::osx_defaults { 'Enable Springing':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.springing.enabled',
    value  => true,
  }

  if $delay != undef {
    boxen::osx_defaults { 'Sets the Delay Before a Hovered Item "Springs"':
      user   => $::boxen_user,
      domain => 'NSGlobalDomain',
      key    => 'com.apple.springing.delay',
      type   => 'float',
      value  => $delay,
    }
  }
}
