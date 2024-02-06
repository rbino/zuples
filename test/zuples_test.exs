defmodule ZuplesTest do
  use ExUnit.Case
  doctest Zuples

  test "greets the world" do
    assert Zuples.hello() == :world
  end
end
