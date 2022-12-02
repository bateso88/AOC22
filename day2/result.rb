choices = { A: "rock", B: "paper", C: "scissors" }

conversion = { X: :A, Y: :B, Z: :C}
elf_loser = { A: :B, B: :C, C: :A }

choice_score = { A: 1, B: 2, C: 3 }
outcome_score = { win: 6, draw: 3, loss: 0 }

games = File.read("input.txt").split("\n").map{ |game| game.split.map(&:to_sym) }.map { |game| [game[0], conversion[game[1]]]}

games.map! do |game|
  outcome = if game[0] == game[1]
    :draw
  elsif elf_loser[game[0]] == game[1]
    :win
  else
    :loss
  end
  outcome_score[outcome] + choice_score[game[1]]
end

p games.sum
