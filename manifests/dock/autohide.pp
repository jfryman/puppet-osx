# Public: Causes the dock to hide itself when you're not pointing at it.
#
# delay - delay seconds (float)
class osx::dock::autohide($delay  = undef) {
  include osx::dock

  boxen::osx_defaults { 'Automatically hide the dock':
    user   => $::boxen_user,
    key    => 'autohide',
    domain => 'com.apple.dock',
    value  => true,
    notify => Exec['killall Dock'];
  }

  if $delay != undef {
    boxen::osx_defaults { 'Set the delay when auto-hiding the dock - Part 1':
      user   => $::boxen_user,
      domain => 'com.apple.dock',
      key    => 'autohide-delay',
      type   => 'float',
      value  => $delay,
      notify => Exec['killall Dock'];
    }

    boxen::osx_defaults { 'Set the delay when auto-hiding the dock - Part 2':
      user   => $::boxen_user,
      domain => 'com.apple.dock',
      key    => 'autohide-time-modifier',
      type   => 'float',
      value  => $delay,
      notify => Exec['killall Dock'];
    }
  }
}
