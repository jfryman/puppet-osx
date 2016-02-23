# Show battery percentage and time
class osx::energy::battery(
  $percent = false,
  $time    = true) {

  $percent_value = $percent ? {
    true => 'YES',
    default => 'NO'
  }
  boxen::osx_defaults { 'Show battery percent':
    user        => $::boxen_user,
    domain      => 'com.apple.menuextra.battery',
    key         => 'ShowPercent',
    value       => $percent_value,
    type        => 'string',
  }

  $time_value = $time ? {
    true => 'YES',
    default => 'NO'
  }
  boxen::osx_defaults { 'Show battery time':
    user        => $::boxen_user,
    domain      => 'com.apple.dock',
    key         => 'ShowTime',
    value       => $time_value,
    type        => 'string',
  }
}
