# Public: Disable the Firewall Blocks All Non-Essential Incoming Connections
class osx::firewall::enable_block_all_incoming_connections {
  include osx::firewall

  exec { 'Disable the Firewall Blocks All Non-Essential Incoming Connections':
    command => "${osx::firewall::path_to_binary} --setblockall off",
    unless  => "${osx::firewall::path_to_binary} --getblockall | grep ENABLED",
    user    => root,
  }
}
