# Public: Show Power Options on the Login Screen'
class osx::login::hide_power_options {
  include osx::system

  boxen::osx_defaults { 'Show Power Options on the Login Screen':
    user   => root,
    key    => 'PowerOffDisabled',
    domain => '/Library/Preferences/com.apple.loginwindow',
    value  => true,
    notify => Exec['killall SystemUIServer'],
  }
}
