defmodule ZuplesTest do
  use ExUnit.Case
  doctest Zuples

  defmodule TestModule do
    import Zuples

    defz ok do
      :ok
    end

    defz error do
      :error
    end

    defz ok_tuple do
      {:ok, "foo"}
    end

    defz error_tuple do
      {:error, "bar", "baz"}
    end
  end

  test "returns 👍 for :ok" do
    assert :"👍" == TestModule.ok()
  end

  test "returns 💩 for :error" do
    assert :"💩" == TestModule.error()
  end

  test "returns 👍 for ok tuple" do
    assert {:"👍", "foo"} == TestModule.ok_tuple()
  end

  test "returns 💩 for error tuple" do
    assert {:"💩", "bar", "baz"} == TestModule.error_tuple()
  end
end
