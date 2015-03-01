defmodule RockPaperScissors do
  @moduledoc """
  Takes two tuples of the form {:playername, :weapon} and returns the winner.

  Rules:
  :rock wins over :scissors, :scissors wins over :paper, :paper wins over :rock

  In case both players choose the same weapon, :draw should be returned.

  ## Examples

      iex> RockPaperScissors.score({:p1, :rock}, {:p2, :rock})
      :draw
      iex> RockPaperScissors.score({:p1, :rock}, {:p2, :paper})
      :p2
      iex> RockPaperScissors.score({:p1, :scissors}, {:p2, :paper})
      :p1
      iex> RockPaperScissors.score({:p1, :scissors}, {:p2, :rock})
      :p2
  """

  permutations = [{:rock, :scissors}, {:scissors, :paper}, {:paper, :rock}]
  for {winner, loser} <- permutations do
    defp get_winner(unquote(winner), unquote(loser)), do: :p1
    defp get_winner(unquote(loser), unquote(winner)), do: :p2
  end
  defp get_winner(_, _) do
    raise ArgumentError, message: "Massive failure."
  end

  def score({:p1, weapon}, {:p2, weapon}), do: :draw
  def score({:p1, w1}, {:p2, w2}) do
    get_winner(w1, w2)
  end
end
