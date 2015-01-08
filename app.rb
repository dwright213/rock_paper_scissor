#01/07/2015 Matt Terrill and Dan Wright
#Epicodus
#Use for stuff if you want, I guess.

require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')

get('/') do
  erb(:form)
end


get('/result') do

#get parameters from Form
  @player_1 = params.fetch('player_1')
  @player_2 = params.fetch('player_2')

#chooses a random weapon if dropdown is left blank
  if @player_2 == ""
    ai_options = ["rock", "paper", "scissors"]
    @player_2 = ai_options[rand(ai_options.length)]
  end

#runs chosen options through our rock_paper_scissors.rb
  @result = (@player_1.beats?(@player_2))

#chooses displayed victory text based on result
    if @result == true
      @victory = ("player 1 wins with " + @player_1)
    elsif @result == false
      @victory = ("player 2 wins with " + @player_2)
    else
      @victory = ("It's a tie, " + @player_1 + " is the same as " + @player_2)
  end

  erb(:result)
end
