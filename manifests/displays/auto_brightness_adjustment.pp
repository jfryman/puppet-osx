# FIXME
class osx::displays::auto_brightness_adjustment {
  boxen::osx_defaults { 'Toggle Whether Brightness is Automatically Adjusted Depending on Ambient Light':
    user   => root,
    key    => '"Automatic Display Enabled"',
    domain => '/Library/Preferences/com.apple.iokit.AmbientLightSensor',
    value  => true;
  }
}
