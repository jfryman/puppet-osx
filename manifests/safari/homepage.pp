# Public: Set Safari's home page
class osx::safari::homepage(
  $page = 'about:blank',
) {
  boxen::osx_defaults { 'Set the Default Safari Homepage':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'HomePage',
    value  => $page,
  }
}
