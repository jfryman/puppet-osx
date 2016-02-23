# Public: Sets the Scrollbar Mode
#
# - style: WhenScrolling, Automatic, Alyways
class osx::windows::scroll_bars(
  $style = 'Automatic',
) {
  boxen::osx_defaults { 'Sets the Scrollbar Mode':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleShowScrollBars',
    value  => $style,
  }
}
