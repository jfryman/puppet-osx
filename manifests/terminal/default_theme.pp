# Public: Set Default Theme
#
# - theme: Theme
class osx::terminal::default_theme(
  $theme = 'Pro',
) {
  boxen::osx_defaults { 'Set Default Theme':
    user   => $::boxen_user,
    domain => 'com.apple.Terminal',
    key    => 'Default Window Settings',
    value  => $theme,
  }

  boxen::osx_defaults { 'Set Startup Theme':
    user   => $::boxen_user,
    domain => 'com.apple.Terminal',
    key    => 'Startup Window Settings',
    value  => $theme,
  }
}
