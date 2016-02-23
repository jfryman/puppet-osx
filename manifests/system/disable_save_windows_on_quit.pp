# Public: Disable to Save Windows and Positions when Restarting/Quitting
class osx::system::disable_save_windows_on_quit {
  boxen::osx_defaults { 'Disable to Save Windows and Positions when Restarting/Quitting - Part 1':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSQuitAlwaysKeepsWindows',
    value  => false,
  }

  boxen::osx_defaults { 'Disable to Save Windows and Positions when Restarting/Quitting - Part 2':
    user   => $::boxen_user,
    domain => 'com.apple.loginwindow',
    key    => 'LoginwindowLaunchesRelaunchApps',
    value  => false,
  }

  boxen::osx_defaults { 'Disable to Save Windows and Positions when Restarting/Quitting - Part 3':
    user   => $::boxen_user,
    domain => 'com.apple.loginwindow',
    key    => 'TALLogoutSavesState',
    value  => false,
  }
}
