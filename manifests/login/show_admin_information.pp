# Public: Show admin information at login-panel
#
# - value: HostName, SystemVersion, SystemBuild, etc...
class osx::login::show_admin_information($value = 'HostName') {
  include osx::system

  boxen::osx_defaults { 'Do not Show Admin Information when Clicking the Clock on the Login Screen':
    user   => root,
    key    => 'AdminHostInfo',
    domain => '/Library/Preferences/com.apple.loginwindow',
    value  => $value,
    notify => Exec['killall SystemUIServer'],
  }
}
