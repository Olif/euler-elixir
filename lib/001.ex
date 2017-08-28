defmodule Euler.Problem1 do


  @moduledoc """
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we
  get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the
  multiples of 3 or 5 below 1000.
  """

  @doc """
  Solver Project Euler problem 1

  ## Examples

  iex> Euler.Problem1.solve(10)
  23
  """

  def solve(limit) do
    multiples = Enum.filter 0..limit - 1, fn x ->
      rem(x, 3) == 0 || rem(x, 5) == 0 end
    Enum.reduce multiples, 0, fn x, acc -> acc + x end
  end

  def print() do
    IO.puts solve(1000)
  end

end
