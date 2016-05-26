# Welcome to Sonic Pi v2.10
# notes

use_synth :fm
live_loop :chordy do
  play (chord :a, chord_names.tick), release: 1
  sleep 0.5
end
