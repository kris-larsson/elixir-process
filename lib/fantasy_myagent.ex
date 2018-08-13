defmodule FantasyTeam.MyAgent do
  
  def start_link do
    Agent.start_link(fn -> %{} end)
  end  

  def add(pid, name) do
    player = FantasyTeam.Player.find(name)
    Agent.get_and_update(pid, fn(x) -> {
      player, Map.put(x, Map.keys(player) |> List.first(), player)
    } end)
    :ok
  end

  def remove(pid, name) do
    Agent.update(pid, fn(x) -> Map.delete(x, name) end)
  end

  def team(pid) do
    Agent.get(pid, fn(x) -> x end)
  end

end
