# Public: Expand File Info Panes
class osx::finder::expand_file_info {
  # Expand Panes: "General", "Open with", and "Sharing & Permissions"
  $value = { 'General' => 1, 'OpenWith' => 1, 'Privileges' => 1 }
  boxen::osx_defaults { 'Expand File Info panes':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'FXInfoPanesExpanded',
    type   => 'dict',
    value  => $value,
  }
}
