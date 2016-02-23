# Public: Sets Sort
class osx::contacts::sort {
  # Sort by last name
  $value = 'sortingLastName sortingFirstName'

  boxen::osx_defaults { 'Sets Sort':
    user   => $::boxen_user,
    domain => 'com.apple.AddressBook',
    key    => 'ABNameSortingFormat',
    value  => $value,
  }
}
