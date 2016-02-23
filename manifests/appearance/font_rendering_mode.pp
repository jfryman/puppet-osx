# TODO: Let the user pass in readable values instead of 1, 2, 3, etc.
#
# Mode 2 enables subpixel font rendering on non-Apple LCDs
#
class osx::appearance::font_rendering_mode(
  $mode = 1,
) {
  boxen::osx_defaults { 'Change the Rendering Mode Used to Display Text':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleFontSmoothing',
    value  => $mode,
  }
}
