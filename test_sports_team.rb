require "minitest/autorun"
require "minitest/rg"
require_relative ("sports_team")


class TestTeam < Minitest::Test

  def test_team_name
    team_one = Team.new("Hibs", ["Joe", "Blogs"], "Trevor")
    assert_equal("Hibs", team_one.name)
  end

  def test_coach
    team_one = Team.new("Hibs", ["Joe", "Blogs"], "Trevor")
    assert_equal("Trevor", team_one.coach)
  end

  def test_players
    team_one = Team.new("Hibs", ["Joe", "Blogs"], "Trevor")
    assert_equal(["Joe", "Blogs"], team_one.players)
  end

  def test_set_coach
    team_one = Team.new("Hibs", ["Joe", "Blogs"], "Trevor")
    team_one.coach=("Sean")
    assert_equal("Sean", team_one.coach)
  end

  def test_add_player
    team_one = Team.new("Hibs", ["Joe", "Blogs"], "Trevor")
    team_one.add_player("Simon")
    assert_equal(true, team_one.players.include?("Simon"))

  end

  def test_player_in_team
    team_one = Team.new("Hibs", ["Joe", "Blogs"], "Trevor")
    assert_equal(true, team_one.in_team("Blogs"))
  end

end
