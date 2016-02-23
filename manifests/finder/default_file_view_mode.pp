# Public: Set the File View Mode Used By Default When Opening New Finder Windows
#
# - mode: Nlsv, icnv, clmv, or Flwv
class osx::finder::default_file_view_mode($mode = 'Nlsv') {
  include osx::finder

  boxen::osx_defaults { 'Set the File View Mode Used By Default When Opening New Finder Windows':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'FXPreferredViewStyle',
    value  => $mode,
    notify => [
      Exec['killall Finder'],
      Exec['Remove All .DS_Store Files'],
    ]
  }
}
