require('pry')

class RPS
  def initialize()

  end
  def wins?(player)
    player.downcase!()
    computer = computer_hand()
    p "#{player} vs #{computer}"
    if player == computer
      p "tie"
      p "choose your weapon:"
      wins?(gets.chomp)
    elsif player == "rock" && computer == "scissors" || player == "paper" && computer == "rock" || player == "scissors" && computer == "paper"
      p "You Win!"
      return true
    else
      p "You are a loser."
      false
    end
  end
  private
  def computer_hand()
    computer_hand = ["rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","dynamite","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors","rock","paper","scissors"].shuffle()
    computer_hand[0]
  end
end
game = RPS.new()
p "choose your weapon:"
game.wins?(gets.chomp)
