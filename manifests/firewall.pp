# Public: Firewall
class osx::firewall($ensure = 'present') {
  $path_to_binary = '/usr/libexec/ApplicationFirewall/socketfilterfw'


  exec { 'Enable the Firewall':
    command => "${osx::firewall::path_to_binary} --setglobalstate on",
    unless  => "${osx::firewall::path_to_binary} --getglobalstate | grep enabled",
    user    => root,
  }
}
