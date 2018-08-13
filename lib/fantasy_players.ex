defmodule FantasyTeam.Player do
  def find(name) do
    case name  |> String.trim |> String.downcase() do
      "peter" -> %{"Peter Bergquist" => %{position: "DEF", team: "MUN"}}
      "patrik" -> %{"Patrik Norman" => %{position: "MID", team: "ARS"}}
      "johan" -> %{"Johan Larsson" => %{position: "FWD", team: "LIV"}}
      _ -> %{"Kristian Larsson" => %{position: "GOL", team: "LIV"}}
    end
  end
end
