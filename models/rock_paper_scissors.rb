class RockPaperScissors

  attr_reader :symbol

  def initialize(symbol)
    @symbol = symbol.downcase()
  end

  def play_against(opponent_symbol)

    if(@symbol == opponent_symbol.symbol)
      return "#{@symbol} Vs #{opponent_symbol}: It's a Draw"
    end

    return result_when_rock(opponent_symbol) if(@symbol == "rock")
    return result_when_scissors(opponent_symbol) if(@symbol == "scissors")
    return result_when_paper(opponent_symbol) if(@symbol == "paper")

  end

  private

  def result_when_rock(opponent_symbol)
    case opponent_symbol.symbol
    when "scissors"
      return "Rock Vs Scissors: Rock Wins"
    when "rock"
      return "Rock Vs Rock: It's a Draw"
    when "paper"
      return "Rock Vs Paper: Paper Wins"
    end
  end

  def result_when_scissors(opponent_symbol)
    case opponent_symbol.symbol
    when "scissors"
      return "Scissors Vs Scissors: It's a Draw"
    when "rock"
      return "Scissors Vs Rock: Rock Wins"
    when "paper"
      return "Scissors Vs Paper: Scissors Win"
    end
  end

  def result_when_paper(opponent_symbol)
    case opponent_symbol.symbol
    when "scissors"
      return "Paper Vs Scissors: Scissors Win"
    when "rock"
      return "Paper Vs Rock: Paper Wins"
    when "paper"
      return "Paper Vs Paper: It's a Draw"
    end
  end

end
