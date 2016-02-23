# Public: Enable the Ability Drag with an External Touchpad
class osx::touchpad::gestures::enable_tap_to_drag_external {
  boxen::osx_defaults { 'Enable the Ability Drag with an External Touchpad':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'Dragging',
    type   => 'int',
    value  => 1,
  }
}
