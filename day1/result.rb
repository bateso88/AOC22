calories_per_elf = File.read("input.txt").split("\n\n").map{|elf| elf.split.map(&:to_i).sum }

puts calories_per_elf.max