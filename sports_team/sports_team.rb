class Team

  attr_reader :name, :players
  attr_accessor :coach, :points

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def in_team(name)
    return @players.include?(name)
  end

  def game_result(win_or_lose)
    @points += 3 if win_or_lose == "win"
  end
  # def name
  #   return @name
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach=(new_coach)
  #   @coach = new_coach
  # end

end
