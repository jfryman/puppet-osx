# Public: Enable Start up automatically after a power failure
class osx::energy::enable_autorestart {
  exec { 'Enable Start up automatically after a power failure':
      command => 'pmset -c autorestart 1',
      user    => root,
      unless  => 'pmset -g custom | grep \'AC Power\' -A 17 | grep -E \'^\sautorestart\s+1\'',
  }
}
