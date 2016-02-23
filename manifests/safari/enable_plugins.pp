# Public: Enable plug-ins
class osx::safari::enable_plugins {
  boxen::osx_defaults { 'Enable plug-ins - part 1':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'WebKitPluginsEnabled',
    value  => true,
  }

  boxen::osx_defaults { 'Enable plug-ins - part 2':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'com.apple.Safari.ContentPageGroupIdentifier.WebKit2PluginsEnabled',
    value  => true,
  }
}
