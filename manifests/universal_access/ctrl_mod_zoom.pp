# Public: Enables Ctrl-scroll to zoom.
class osx::universal_access::ctrl_mod_zoom {
  boxen::osx_defaults { 'Use scroll gesture with the Ctrl (^) key to zoom - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.universalaccess',
    key    => 'HIDScrollZoomModifierMask',
    value  => 262144;
  }

  boxen::osx_defaults { 'Use scroll gesture with the Ctrl (^) key to zoom - Part 2':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'HIDScrollZoomModifierMask',
    value  => 262144;
  }
}
