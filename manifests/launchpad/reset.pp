# Public: Reset LaunchPad
class osx::launchpad::reset {
  exec { 'Reset LaunchPad':
    command => "find /Users/${::boxen_user}/Library/Application Support/Dock -name '*.db' -maxdepth 1 -delete",
    onlyif  => "find /Users/${::boxen_user}/Library/Application Support/Dock -name '*.db' -maxdepth 1 | grep '.db'",
  }
}
