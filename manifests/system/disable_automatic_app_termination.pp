# Public: Toggle Whether to Quit Apps Which Have Been Idle
class osx::system::disable_automatic_app_termination($ensure = 'present') {
  boxen::osx_defaults { 'Toggle Whether to Quit Apps Which Have Been Idle':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSDisableAutomaticTermination',
    value  => true,
  }
}
