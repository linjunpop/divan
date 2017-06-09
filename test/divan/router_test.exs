defmodule Divan.RouterTest do
  use ExUnit.Case, async: true
  use Plug.Test

  alias Divan.Router

  @opts Router.init([])

  test "get /" do
    conn =
      conn(:get, "/")
      |> Router.call(@opts)

    assert conn.status == 200
  end
end
