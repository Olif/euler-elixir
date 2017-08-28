defmodule ElixirEulerTest do
  use ExUnit.Case
  doctest ElixirEuler

  test "greets the world" do
    assert ElixirEuler.hello() == :world
  end
end
