class RockPaperScissors

  attr_reader :symbol

  def initialize(symbol)
    @symbol = symbol.downcase()
  end

  def compare(opponent_symbol)
    if(@symbol == opponent_symbol.symbol)
      return :draw
    end

    return result_when_rock(opponent_symbol) if(@symbol == "rock")
    return result_when_scissors(opponent_symbol) if(@symbol == "scissors")
    return result_when_paper(opponent_symbol) if(@symbol == "paper")

  end

  def play_against(opponent_symbol)

    result = compare(opponent_symbol)

    opponent = opponent_symbol.symbol
    output = "#{@symbol} VS #{opponent}: "

    return output + "#{symbol} Wins" if(result == :win)
    return output + "#{symbol} Lost" if(result == :loose)
    return output + "It's a draw" if(result == :draw)

  end

  private

  def result_when_rock(opponent_symbol)
    case opponent_symbol.symbol
    when "scissors"
      return :win
    when "rock"
      return :draw
    when "paper"
      return :loose
    end
  end

  def result_when_scissors(opponent_symbol)
    case opponent_symbol.symbol
    when "scissors"
      return :draw
    when "rock"
      return :loose
    when "paper"
      return :win
    end
  end

  def result_when_paper(opponent_symbol)
    case opponent_symbol.symbol
    when "scissors"
      return :loose
    when "rock"
      return :win
    when "paper"
      return :draw
    end
  end
end
