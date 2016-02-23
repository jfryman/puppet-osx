# Public: Clears the dock of 'pinned' icons.
class osx::dock::clear {
  include osx::dock

  boxen::osx_defaults { 'Prevent launchpad from reappearing':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'checked-for-launchpad',
    value  => true,
    notify => Exec['killall Dock'];
  }

  boxen::osx_defaults { 'Remove all the pinned icons - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'persistent-apps',
    value  => [],
    type   => 'array',
    notify => Exec['killall Dock'];
  }

  boxen::osx_defaults { 'Remove all the pinned icons - Part 2':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'persistent-others',
    value  => [],
    type   => 'array',
    notify => Exec['killall Dock'];
  }
}
