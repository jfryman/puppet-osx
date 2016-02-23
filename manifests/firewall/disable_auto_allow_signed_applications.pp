# Public: Disable Signed Apps are Automatically Allowed to Accept Incoming Connections
class osx::firewall::disable_auto_allow_signed_applications {
  include osx::firewall

  exec { 'Disable Signed Apps are Automatically Allowed to Accept Incoming Connections':
    command => "${osx::firewall::path_to_binary} --setallowsigned off",
    unless  => "${osx::firewall::path_to_binary} --getallowsigned | grep DISABLED",
    user    => root,
  }
}
