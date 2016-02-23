# Public: Set illuminate built-in MacBook keyboard
#
# - turn_off_sec: Turn off keyboard illumination when computer is not used
class osx::keyboard::enable_illuminate(
  $turn_off_sec = undef,
) {
  boxen::osx_defaults { 'Enable illuminate keyboard':
    user   => $::boxen_user,
    domain => 'com.apple.BezelServices',
    key    => 'kDim',
    value  => true,
  }

  if $turn_off_sec != undef {
    boxen::osx_defaults { 'Disable smart dashes':
      user   => $::boxen_user,
      domain => 'com.apple.BezelServices',
      key    => 'kDimTime',
      value  => $turn_off_sec,
    }
  }
}
