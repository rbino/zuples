# Zuples

Gen Z error tuples.

## Usage

```elixir
defmodule MyModule do
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
```

```bash
iex(1)> MyModule.ok()
:"👍"
iex(2)> MyModule.error()
:"💩"
iex(3)> MyModule.ok_tuple()
{:"👍", "foo"}
iex(4)> MyModule.error_tuple()
{:"💩", "bar", "baz"}
```

## Installation

I won't rob Hex of a package name for this.

If you really want to, you can add this to the dependencies via Github:

```elixir
def deps do
  [
    {:zuples, github: "rbino/zuples"}
  ]
end
```

## Why?

Yes.
