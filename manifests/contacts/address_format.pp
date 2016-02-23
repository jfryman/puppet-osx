# Public: Sets Address Format
#
# - county_code: County Code
class osx::contacts::address_format(
  $county_code = 'us',
) {
  boxen::osx_defaults { 'Sets Address Format':
    user   => $::boxen_user,
    domain => 'com.apple.AddressBook',
    key    => 'ABDefaultAddressCountryCode',
    value  => 'us',
  }
}
