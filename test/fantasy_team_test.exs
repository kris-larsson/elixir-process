defmodule FantasyTeamTest do
  use ExUnit.Case
  doctest FantasyTeam

  test "greets the world" do
    assert FantasyTeam.hello() == :world
  end
end
