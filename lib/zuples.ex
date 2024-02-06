defmodule Zuples do
  @moduledoc """
  Gen Z error tuples.
  """

  @doc """
  Translate the `:ok`/`:error` atoms in your function return values to fun emojis.

  Using `defz` instead of `def`, the return value of your function gets checked against `:ok`,
  `:error` and tuples of arbitrary length having those values as their first.

  If one of those values is found, `:ok` gets replaced with `:"👍"` and `:error` gets replaced with
  `:"💩".
  """
  defmacro defz(call, do: block) do
    quote do
      def unquote(call) do
        unquote(block)
        |> case do
          :ok ->
            :"👍"

          :error ->
            :"💩"

          ok_tuple when is_tuple(ok_tuple) and elem(ok_tuple, 0) == :ok ->
            :erlang.setelement(1, ok_tuple, :"👍")

          error_tuple when is_tuple(error_tuple) and elem(error_tuple, 0) == :error ->
            :erlang.setelement(1, error_tuple, :"💩")

          other ->
            other
        end
      end
    end
  end
end
