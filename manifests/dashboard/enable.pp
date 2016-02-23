# Public: Enable the dashboar
#   value 1 = Off
#   value 2 = As Space
#   value 3 = As Overlay
class osx::dashboard::enable($value = 2) {
  include osx::dashboard

  boxen::osx_defaults { 'Enable dashboard':
    user   => $::boxen_user,
    domain => 'com.apple.dashboard',
    key    => 'dashboard-enabled-state',
    value  => $value,
    notify => Exec['killall Dock'],
  }
}
