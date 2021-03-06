defmodule Euler.Problem2 do

  @moduledoc """
  Each new term in the Fibonacci sequence is generated by adding the previous
  two terms. By starting with 1 and 2, the first 10 terms will be:
  1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
  By considering the terms in the Fibonacci sequence whose values do not exceed
  four million, find the sum of the even-valued terms.
  """

  @doc """
  Solves Project Euler problem 2

  ##Examples

  iex>Euler.Problem2.solve(10)
  44
  """


  def solve(limit) do
    do_fib(0, 1, 0, limit)
  end

  def print() do
    IO.puts solve(4_000_000)
  end

  defp do_fib(a, b, acc, limit) when b < limit do
    sum = a + b
    case rem(sum, 2) do
      0 -> do_fib(b, sum, acc + sum, limit)
      _ -> do_fib(b, sum, acc, limit)
    end
  end

  defp do_fib(_, b, acc, limit) when b >= limit do
    acc
  end

end
