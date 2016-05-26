# Welcome to Sonic Pi v2.10
use_synth :fm

define :seq do |n|
  play n, release: 0.25
  sleep 0.25
  play n+12, release: 0.25
  sleep 0.25
  play n+24, release: 0.25
  sleep 0.25
end

live_loop :first do
  seq 47
end

live_loop :perc do
  sample :bd_haus, beat_stretch: 0.75
  sleep 0.75
end



