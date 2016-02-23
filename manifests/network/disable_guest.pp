# Public: Toggles Whether to Allow Guest Access to Shared Folders
class osx::network::disable_guest {
  boxen::osx_defaults { 'Toggles Whether to Allow Guest Access to Shared Folders - Part 1':
    user   => root,
    key    => 'guestAccess',
    domain => '/Library/Preferences/com.apple.AppleFileServer',
    value  => false,
  }

  boxen::osx_defaults { 'Toggles Whether to Allow Guest Access to Shared Folders - Part 2':
    user   => root,
    key    => 'AllowGuestAccess',
    domain => '/Library/Preferences/com.apple.smb.server',
    value  => false,
  }
}
