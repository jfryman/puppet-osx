# Public: Display iTunes Notifications
class osx::dock::itunes_notifications {
  include osx::dock

  boxen::osx_defaults { 'Display iTunes Notifications on the Dock':
    user   => $::boxen_user,
    key    => 'itunes-notifications',
    domain => 'com.apple.dock',
    value  => true,
    notify => Exec['killall Dock'];
  }
}
