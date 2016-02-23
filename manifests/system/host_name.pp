# Public: Set HostName
class osx::system::host_name($name = 'localHost') {
  exec { "hostname ${name}":
    unless => "hostname | grep ${name}",
    user   => root,
  }

  exec { "scutil --set ComputerName ${name}":
    unless => "scutil --get ComputerName | grep ${name}",
    user   => root,
  }

  exec { "scutil --set HostName ${name}":
    unless => "scutil --get HostName | grep ${name}",
    user   => root,
  }

  exec { "scutil --set LocalHostName ${name}":
    unless => "scutil --get LocalHostName | grep ${name}",
    user   => root,
  }

  boxen::osx_defaults { 'Update Computer NetBIOS Host Name - Part 1':
    user   => root,
    domain => '/Library/Preferences/SystemConfiguration/com.apple.smb.server',
    key    => 'NetBIOSName',
    value  => $name,
  }

  boxen::osx_defaults { 'Update Computer NetBIOS Host Name - Part 2':
    user   => root,
    domain => '/Library/Preferences/SystemConfiguration/com.apple.smb.server',
    key    => 'ServerDecription',
    value  => $name,
  }
}
