# Public: Show all filename extentions
class osx::finder::show_all_extensions {
  include osx::finder

  boxen::osx_defaults { 'Show all filename extentions':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleShowAllExtensions',
    value  => true,
    notify => Exec['killall Finder'];
  }
}
