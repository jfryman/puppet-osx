# Public: Modify 'natural' mouse scrolling (enable or disable). Requires re-login.
class osx::mouse::natural_mouse_scrolling($enabled = true) {
  boxen::osx_defaults { 'Disable natural mouse scrolling':
    ensure => present,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.swipescrolldirection',
    type   => 'bool',
    value  => $enabled,
    user   => $::boxen_user,
  }
}
