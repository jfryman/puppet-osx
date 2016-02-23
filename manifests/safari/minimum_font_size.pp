# Public: Set minimum font size
class osx::safari::minimum_font_size($size = 12) {
  boxen::osx_defaults { 'Set minimum font size':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'WebKitMinimumFontSize',
    value  => $size,
  }
}
