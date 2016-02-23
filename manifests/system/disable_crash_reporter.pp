# Public: Disable the Dialog to Sent Usage Statistics to Apple
class osx::system::disable_crash_reporter {
  boxen::osx_defaults { 'Disable the Dialog to Sent Usage Statistics to Apple - Part 1':
    user   => $::boxen_user,
    key    => 'DialogType',
    domain => 'com.apple.CrashReporter',
    value  => false;
  }

  boxen::osx_defaults { 'Disable the Dialog to Sent Usage Statistics to Apple - Part 2':
    user   => $::boxen_user,
    key    => 'AutoSubmit',
    host   => 'currentHost',
    domain => 'com.apple.SubmitDiagInfo',
    value  => false;
  }
}
