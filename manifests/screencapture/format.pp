# Public: Setting screencapture image format
class osx::screencapture::format($format = 'jpg') {
  boxen::osx_defaults { 'Sets the Format of Images Taken With Screen Capture':
    user   => $::boxen_user,
    key    => 'type',
    domain => 'com.apple.screencapture',
    value  => $format,
  }
}
