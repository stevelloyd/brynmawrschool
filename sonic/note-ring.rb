# Welcome to Sonic Pi v2.10

n = (ring :e1, :e2, :e3)
sn = synth :tb303, note: :e1, release: 20, cutoff: 80, res: 0.8, wave: 0

live_loop :tune do
  control sn, note: n.tick, cutoff: rrand(90,130)
  sleep 0.125
end

