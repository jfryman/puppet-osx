# Public: Minimize windows into application icon
class osx::dock::minimize_to_application {
  include osx::dock

  boxen::osx_defaults { 'Minimize windows into application icon':
    user   => $::boxen_user,
    key    => 'minimize-to-application',
    domain => 'com.apple.dock',
    value  => true,
    notify => Exec['killall Dock'];
  }
}
