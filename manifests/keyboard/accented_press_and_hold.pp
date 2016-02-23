# Public: Press-and-Hold for Accented Characters
class osx::keyboard::accented_press_and_hold {
  boxen::osx_defaults { 'Press-and-Hold for Accented Characters':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'ApplePressAndHoldEnabled',
    value  => true,
  }
}
