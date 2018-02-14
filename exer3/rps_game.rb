class WrongNumberOfPlayersError < StandardError
end

class NoSuchStrategyErrors < StandardError
end

def rps_game_winner(array)
  strategy = ["P", "S", "R"]
  raise WrongNumberOfPlayersError, "Number of Players must be 2" if array.length != 2
  array.each { |e| raise NoSuchStrategyErrors if !strategy.include?(e[1].to_s)  }
  case array[0][1]
  when "P"
    if array[1][1] == "S"
      array[1]
    else
      array[0]
    end
  when "S"
    if array[1][1] == "R"
      array[1]
    else
      array[0]
    end
  when "R"
    if array[1][1] == "P"
      array[1]
    else
      array[0]
    end

  end

end
