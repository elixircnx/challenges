defmodule RockPaperScissorsTest do
  use ExUnit.Case, async: true

  import RockPaperScissors 

  doctest RockPaperScissors

  test "correct input" do
    assert_raise ArgumentError, "Massive failure.", fn ->
      score({:p1, :nuclearbomb}, {:p2, :rock})
    end
    assert_raise ArgumentError, "Massive failure.", fn ->
      score({:p1, :scissors}, {:p2, :sarcasm})
    end
  end
end
