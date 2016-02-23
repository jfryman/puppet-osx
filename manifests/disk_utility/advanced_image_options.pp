# Public: Advanced Image Options in Disk Utility
class osx::disk_utility::advanced_image_options {
  boxen::osx_defaults { 'Advanced Image Options in Disk Utility':
    user   => $::boxen_user,
    domain => 'com.apple.DiskUtility',
    key    => 'advanced-image-options',
    value  => true;
  }
}
