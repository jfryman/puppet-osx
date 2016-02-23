# Public: Set the Speed of Transitioning Into and Out of Mission Control
class osx::mission_control::animation($speed = 10) {
  boxen::osx_defaults { 'Set the Speed of Transitioning Into and Out of Mission Control':
    user   => $::boxen_user,
    key    => 'expose-animation-duration',
    domain => 'com.apple.dock',
    type   => 'float',
    value  => $speed,
  }
}
