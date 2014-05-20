class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
   strategy1 = player1[1]
   strategy2 = player2[1]
   raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless  
	 (strategy1.match(/[PRS]/) && strategy2.match(/[PRS]/))
  	 return player1 if strategy1 == strategy2
   if (strategy1 == 'P' && strategy2 == 'R') || 
      (strategy1 == 'R' && strategy2 == 'S') ||
      (strategy1 == 'S' && strategy2 == 'P') 
        return player1
   else
	return player2
   end     
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
  end

end
