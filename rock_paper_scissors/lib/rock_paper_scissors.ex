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

  def score({:p1, weapon}, {:p2, weapon}), do: :draw
  def score({:p1, w1}, {:p2, w2}) do
    win = [rock: 3, scissors: 2, paper: 1]
    case win[w1] - win[w2] do
      1 -> :p1
      -1 -> :p2
      2 -> :p2
      -2 -> :p1
    end
  end
end
