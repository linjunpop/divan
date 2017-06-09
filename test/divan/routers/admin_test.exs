defmodule Divan.Routers.AdminTest do
  use ExUnit.Case, async: true
  use Plug.Test

  alias Divan.Router.Admin

  @opts Admin.init([])

  test "post /_user/" do
    conn =
      conn(:post, "/_user/")
      |> Admin.call(@opts)

    assert conn.status == 201
  end
end
