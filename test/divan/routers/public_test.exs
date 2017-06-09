defmodule Divan.Routers.PublicTest do
  use ExUnit.Case, async: true
  use Plug.Test

  alias Divan.Router.Public

  @opts Public.init([])

  test "get /" do
    conn =
      conn(:get, "/")
      |> Public.call(@opts)

    assert conn.status == 200
  end
end
