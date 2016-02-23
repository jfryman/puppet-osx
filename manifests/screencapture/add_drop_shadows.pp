# Public: Setting screecapture include drop shadows
class osx::screencapture::add_drop_shadows {
  boxen::osx_defaults { 'Enable Images Taken With Screen Capture Include Drop Shadows':
    user   => $::boxen_user,
    key    => 'disable-shadow',
    domain => 'com.apple.screencapture',
    value  => true,
  }
}
