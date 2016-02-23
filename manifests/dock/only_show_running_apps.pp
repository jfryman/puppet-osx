# Public: Only show running apps
class osx::dock::only_show_running_apps {
  include osx::dock

  boxen::osx_defaults { 'Toggles Whether to Only Show Running Application in the Dock':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'static-only',
    value  => true,
    notify => Exec['killall Dock'],
  }
}
