# Public: Disable the Guest Account to Login
class osx::login::disable_guest {
  include osx::system

  boxen::osx_defaults { 'Disable the Guest Account to Login':
    user   => root,
    key    => 'GuestEnabled',
    domain => '/Library/Preferences/com.apple.loginwindow',
    value  => false,
    notify => Exec['killall SystemUIServer'],
  }
}
