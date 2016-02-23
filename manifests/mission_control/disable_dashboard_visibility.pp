# Public: Toggle the Visibility of the Dashboard as a Space in Mission Control
class osx::mission_control::disable_dashboard_visibility {
  boxen::osx_defaults { 'Toggle the Visibility of the Dashboard as a Space in Mission Control':
    user   => $::boxen_user,
    key    => 'dashboard-in-overlay',
    domain => 'com.apple.dock',
    value  => true,
    notify => Exec['killall Dock'];
  }
}
