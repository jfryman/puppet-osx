# Public: Number of Attempts Before Password Hint is Shown
class osx::login::retries_before_hint($attempts = 5) {
  include osx::system

  boxen::osx_defaults { 'Number of Attempts Before Password Hint is Shown':
    user   => root,
    key    => 'RetriesUntilHint',
    domain => '/Library/Preferences/com.apple.loginwindow',
    value  => $attempts,
    notify => Exec['killall SystemUIServer'],
  }
}
