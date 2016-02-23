# Public: Disable the dashboard
class osx::dashboard::disable {
  include osx::dashboard

  boxen::osx_defaults { 'Disable dashboard':
    user   => $::boxen_user,
    domain => 'com.apple.dashboard',
    key    => 'mcx-disabled',
    value  => true,
    notify => Exec['killall Dashboard'],
  }
}
