# Public: Sets Display Format
class osx::contacts::display_format {
  # Display format "Last, First"
  boxen::osx_defaults { 'Sets Display Format':
    user   => $::boxen_user,
    domain => 'com.apple.AddressBook',
    key    => 'ABNameDisplay',
    value  => 1,
  }
}
