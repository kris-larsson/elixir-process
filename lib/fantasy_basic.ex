defmodule FantasyTeam.Basic do

  def start_link do
    spawn_link(__MODULE__, :loop, [%{}])
  end

  def loop(state) do
    receive do
      {:add, name} ->
        player = FantasyTeam.Player.find(name)
        new_state = Map.put(state, Map.keys(player) |> List.first(), player)

        loop(new_state)

      {:remove, name} ->
        new_state = Map.delete(state, name)

        loop(new_state)

      {:team, pid} ->
        send(pid, {:ok, state})

        loop(state)
    end
  end
end
