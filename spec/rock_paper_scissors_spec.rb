require('rspec')
require('rock_paper_scissors')

describe('#rock_paper_scissors') do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "scissors")).to(eq(true))
  end

  it("returns false if rock is the object and paper is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "paper")).to(eq(false))
  end
end
