# Public: Set Hibernatemode
#
# - mode: Hibernatemode mode bits
#         bit 0: enables hibernation
#         bit 1: causes OS X to maintain system state in memory and \
#                leave system power on until battery level drops below a near empty threshold
#         bit 3: encourages the dynamic pager to page out inactive pages prior to hibernation
#         bit 4: encourages the dynamic pager to page out more aggressively prior to hibernation
class osx::energy::hibernatemode($mode = 7) {
  exec { 'Set SafeSleep behavior on Battery Power':
    command => "pmset -b hibernatemode ${mode}",
    user    => root,
    unless  => "pmset -g custom | grep 'Battery Power' -A 16 | grep -E '^\shibernatemode\s+${mode}'",
  }

  exec { 'Set SafeSleep behavior When Plugged In':
    command => "pmset -c hibernatemode ${mode}",
    user    => root,
    unless  => "pmset -g custom | grep 'AC Power' -A 17 | grep -E '^\shibernatemode\s+${mode}'",
  }
}

