# Public: Disable the Downloaded App Quarantine
class osx::system::disable_app_quarantine {
  boxen::osx_defaults { 'Disable the Downloaded App Quarantine':
    user   => $::boxen_user,
    key    => 'LSQuarantine',
    domain => 'com.apple.LaunchServices',
    value  => false,
  }
}
