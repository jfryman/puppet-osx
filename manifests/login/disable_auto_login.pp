# Public: Disable to Automatically Login a User'
class osx::login::disable_auto_login {
  include osx::system

  boxen::osx_defaults { 'Disable to Automatically Login a User':
    ensure => 'absent',
    user   => root,
    key    => 'autoLoginUser',
    domain => '/Library/Preferences/com.apple.loginwindow',
    notify => Exec['killall SystemUIServer'],
  }

  file { '/etc/kcpassword':
    ensure => absent,
  }
}
