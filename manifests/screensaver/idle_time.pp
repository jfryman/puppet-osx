# Public: Set Start after time
class osx::screensaver::idle_time(
  $time = 600,
) {
  boxen::osx_defaults { 'Set Start after time the Screensaver':
    host   => 'currentHost',
    user   => $::boxen_user,
    key    => 'idleTime',
    domain => 'com.apple.screensaver',
    value  => $time,
  }
}
