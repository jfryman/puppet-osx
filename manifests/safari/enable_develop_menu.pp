# Public: Enable Develop Menu
class osx::safari::enable_develop_menu {
  boxen::osx_defaults { 'Enable Develop Menu - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'IncludeDevelopMenu',
    value  => true,
  }

  boxen::osx_defaults { 'Enable Develop Menu - Part 2':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'WebKitDeveloperExtrasEnabledPreferenceKey',
    value  => true,
  }

  boxen::osx_defaults { 'Enable Develop Menu - Part 3':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled',
    value  => true,
  }

  boxen::osx_defaults { 'Enable Develop Menu - Part 4':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'WebKitDeveloperExtras',
    value  => true,
  }
}
