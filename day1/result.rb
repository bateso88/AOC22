calories_per_elf = File.read("input.txt").split("\n\n").map{ |elf| elf.split.map(&:to_i).sum }

p calories_per_elf.max

p calories_per_elf.sort.last(3).sum
