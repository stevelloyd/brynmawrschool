# play notes from a list of months

months = (ring 8,9,10)

use_synth :pretty_bell
live_loop :birth_months do
#  play 60 + months.tick*3
  sleep 0.3
end
