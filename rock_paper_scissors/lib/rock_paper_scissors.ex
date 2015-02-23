defmodule RockPaperScissors do
  @doc """
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
  def score(t1, t2) do
  end
end
