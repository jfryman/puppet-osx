# Public: The Disk Images are Auto-Mounted
class osx::disk_images::auto_mount {
  boxen::osx_defaults { 'The Disk Images are Auto-Mounted - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.frameworks.diskimages',
    key    => 'auto-open-ro-root',
    value  => true;
  }

  boxen::osx_defaults { 'The Disk Images are Auto-Mounted - Part 2':
    user   => $::boxen_user,
    domain => 'com.apple.frameworks.diskimages',
    key    => 'auto-open-rw-root',
    value  => true;
  }

  boxen::osx_defaults { 'The Disk Images are Auto-Mounted - Part 3':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'OpenWindowForNewRemovableDisk',
    value  => true;
  }
}
