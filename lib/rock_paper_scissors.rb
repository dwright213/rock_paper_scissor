class String
  define_method(:beats?) do |opponent|

#assigns a value to chosen weapon
    if self == "rock"
      self_worth = 5
    elsif self == "scissors"
      self_worth = 0
    elsif (self == "paper") && (opponent == "scissors")
      self_worth = -6
    else
      self_worth = 6
    end
#same as above, except now we are doing it for "opponent", which is the argument when you run the method.
    if opponent == "rock"
      opponent_worth = 5
    elsif opponent == "scissors"
      opponent_worth = 0
    elsif (opponent == "paper") && (self == "scissors")
      opponent_worth = -6
    else
      opponent_worth = 6
    end

#determins victor based on value of chosen weapons, or tie if both combatants have opted for the same.
    if self_worth > opponent_worth
      true
    elsif opponent_worth > self_worth
      false
    else
      "TIE"
    end
  end
end
