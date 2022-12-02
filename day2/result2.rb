choices = { A: "rock", B: "paper", C: "scissors" }

conversion = { X: :lose, Y: :draw, Z: :win}
player_winner = { A: :B, B: :C, C: :A }
player_loser = { A: :C, B: :A, C: :B }

choice_score = { A: 1, B: 2, C: 3 }
outcome_score = { win: 6, draw: 3, lose: 0 }

games = File.read("input.txt")
            .split("\n")
            .map { |game| game.split.map(&:to_sym) }
            .map { |elf_choice, player_choice| [elf_choice, conversion[player_choice]]}

games.map! do |elf_choice, outcome|
  player_choice = 
    if outcome == :win
      player_winner[elf_choice]
    elsif outcome == :draw
      elf_choice
    else
      player_loser[elf_choice]
    end
  outcome_score[outcome] + choice_score[player_choice]
end

p games.sum
