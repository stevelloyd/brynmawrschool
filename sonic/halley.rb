# Welcome to Sonic Pi v2.5

use_synth :fm
File.open("/Users/stevel/Projects/brynmawrschool/racket/pi-temps.txt") do |file|
  file.each_line {
    |line|
    puts ("Temp = #{line}")
    play (line.to_i + 80) # very simple scaling of temp -> note
    sleep 0.2
  }
end