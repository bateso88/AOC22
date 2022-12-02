games = File.read("input.txt").split("\n").map { |game| game.split.map(&:to_sym) }
score_matrix_1 = { 
  A: { X: 4, Y: 8, Z: 3},
  B: { X: 1, Y: 5, Z: 9},
  C: { X: 7, Y: 2, Z: 6},
}
score_matrix_2 = { 
  A: { X: 3, Y: 4, Z: 8},
  B: { X: 1, Y: 5, Z: 9},
  C: { X: 2, Y: 6, Z: 7},
}

def result(games, score_calculator)
  games.map{ |elf_choice, player_choice| score_calculator[elf_choice][player_choice] }.sum
end

p result(games, score_matrix_1)
p result(games, score_matrix_2)
