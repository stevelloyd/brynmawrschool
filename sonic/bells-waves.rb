# Welcome to Sonic Pi v2.0

define :bells do
  loop do
    sample :perc_bell, rate: (rrand 0.125, 1.5)
    sleep rrand(0.2, 2)
  end
end

define :waves do
  with_fx :reverb, mix: 0.5 do
    loop do
      s = synth [:bnoise, :cnoise, :gnoise].choose, amp: rrand(0.5, 1.5), attack: rrand(0, 4), sustain: rrand(0, 2), release: rrand(1, 3), cutoff_slide: rrand(0, 3), cutoff: rrand(60, 80), pan: rrand(-1, 1), pan_slide: 1, amp: rrand(0.5, 1)
      control s, pan: rrand(-1, 1), cutoff: rrand(60, 115)
      sleep rrand(2, 3)
    end
  end
end

#bells
waves