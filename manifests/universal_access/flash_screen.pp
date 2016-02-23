# Public: Toggle Whether the Screen Flashes When an Alert Occurs
class osx::universal_access::flash_screen {
  boxen::osx_defaults { 'The Screen Flashes When an Alert Occurs':
    user   => $::boxen_user,
    domain => 'com.apple.universalaccess',
    key    => 'flashScreen',
    value  => true,
  }
}
