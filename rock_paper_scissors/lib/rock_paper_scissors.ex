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
  def score({_, weapon}, {_, weapon}), do: :draw
  def score({player1, :rock}, {_, :scissors}), do: player1
  def score({player1, :scissors}, {_, :paper}), do: player1
  def score({player1, :paper, {_, :rock}}), do: player1
  def score(_, {player2, _}), do: player2
end
