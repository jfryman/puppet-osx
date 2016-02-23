# Public: Skip the Verification of Disk Images
class osx::disk_images::skip_verification {
  boxen::osx_defaults { 'Skip the Verification of Disk Images - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.frameworks.diskimages',
    key    => 'skip-verify',
    value  => true;
  }

  boxen::osx_defaults { 'Skip the Verification of Disk Images - Part 2':
    user   => $::boxen_user,
    domain => 'com.apple.frameworks.diskimages',
    key    => 'skip-verify-locked',
    value  => true;
  }

  boxen::osx_defaults { 'Skip the Verification of Disk Images - Part 3':
    user   => $::boxen_user,
    domain => 'com.apple.frameworks.diskimages',
    key    => 'skip-verify-remote',
    value  => true;
  }
}
