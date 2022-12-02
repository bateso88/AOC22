choices = { A: "rock", B: "paper", C: "scissors" }

conversion = { X: :A, Y: :B, Z: :C}
elf_loser = { A: :B, B: :C, C: :A }

choice_score = { A: 1, B: 2, C: 3 }
outcome_score = { win: 6, draw: 3, loss: 0 }

games = File.read("input.txt")
            .split("\n")
            .map { |game| game.split.map(&:to_sym) }
            .map { |elf_choice, player_choice| [elf_choice, conversion[player_choice]]}

games.map! do |elf_choice, player_choice|
  outcome = if elf_choice == player_choice
    :draw
  elsif elf_loser[elf_choice] == player_choice
    :win
  else
    :loss
  end
  outcome_score[outcome] + choice_score[player_choice]
end

p games.sum
