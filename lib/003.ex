defmodule Euler.Problem3 do

  @moduledoc """
  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143 ?
  """


  @doc """
  Solves Project Euler problem 3

  ##Examples

  iex>Euler.Problem3.solve(13195)
  29
  """

  def solve(number) do
   _factorize([], 2, number)
  end

  defp _factorize(primes, factor, remainder) when factor <= remainder do
    case rem(remainder, factor) do
      0 -> _factorize([factor | primes], factor, div(remainder, factor))
      _ -> _factorize(primes, factor + 1, remainder)
    end
  end

  defp _factorize([head | _], _, _) do
    head
  end

  def print() do
    IO.puts solve(600851475143)
  end

end
