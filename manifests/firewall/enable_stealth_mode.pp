# Public: Enable the Firewall Responds to Innocuous Requests like PING
class osx::firewall::enable_stealth_mode {
  include osx::firewall

  exec { 'Enable the Firewall Responds to Innocuous Requests like PING':
    command => "${osx::Firewall::path_to_binary} --setstealthmode on",
    unless  => "${osx::Firewall::path_to_binary} --getstealthmode | grep enabled",
    user    => root,
  }
}
