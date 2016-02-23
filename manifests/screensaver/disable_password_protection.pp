# Public: Disabled to A Password is Required to Disable the Screensaver
class osx::screensaver::disable_password_protection {
  boxen::osx_defaults { 'Disabled to A Password is Required to Disable the Screensaver':
    ensure => absent,
    user   => $::boxen_user,
    key    => 'askForPassword',
    domain => 'com.apple.screensaver',
  }
}
