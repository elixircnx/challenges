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
  @spec score(tuple, tuple) :: atom
  def score(t1, t2), do: _score(t1, t2)
  defp _score({_, w1}, {_, w2}) when w1 == w2, do: :draw
  defp _score({:p1, :rock}, {:p2, :paper}), do: :p2
  defp _score({:p1, :scissors}, {:p2, :paper}), do: :p1
  defp _score({:p1, :scissors}, {:p2, :rock}), do: :p2
end
