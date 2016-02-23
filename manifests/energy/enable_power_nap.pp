# Public: Enable Power Nap
class osx::energy::enable_power_nap {
  exec { 'Enable Power Nap':
      command => 'pmset -c darkwakes 1',
      user    => root,
      unless  => 'pmset -g custom | grep \'AC Power\' -A 17 | grep -E \'^\spowernap\s+1\'',
  }
}
