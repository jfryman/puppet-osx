# Public: Sets the Length of Time in Seconds When a Window is Resized
class osx::windows::animations_resize(
  $resize_duration = 0.15,
) {
  boxen::osx_defaults { 'Sets the Length of Time in Seconds When a Window is Resized':
    user   => $::boxen_user,
    key    => 'NSWindowResizeTime',
    domain => 'NSGlobalDomain',
    type   => 'float',
    value  => $resize_duration,
  }
}
