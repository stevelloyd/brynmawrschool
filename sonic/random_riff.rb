# Welcome to Sonic Pi v2.10
live_loop :random_riff do
  use_synth :dsaw
  use_random_seed 8
  
  notes = (scale :e3, :mixolydian).shuffle
  8.times do
    play notes.tick, attack: 0.2, release: 0.5, cutoff:100 if one_in(2)
    sleep 0.25
  end
end
