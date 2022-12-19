rucksacks = File.read("input.txt").split.map { |rucksack| rucksack.chars.each_slice(rucksack.length / 2).to_a }

incorrect_items = rucksacks.map { |rucksack| rucksack[0].select { |item| rucksack[1].include?(item) }[0] }

capital_letters = incorrect_items.select {|item| item.upcase == item}
lower_case_letters = incorrect_items.select {|item| item.upcase != item}

result = capital_letters.map { |char| char.ord - 38 }.sum + lower_case_letters.map { |char| char.ord - 96 }.sum

p result

groups = File.read("input.txt").split.each_slice(3).map { |group| group.map(&:chars) }

badges = groups.map { |group| group[0].select { |item| group[1].include?(item) && group[2].include?(item) }[0] }

capital_letters = badges.select {|item| item.upcase == item}
lower_case_letters = badges.select {|item| item.upcase != item}

result = capital_letters.map { |char| char.ord - 38 }.sum + lower_case_letters.map { |char| char.ord - 96 }.sum

p result
