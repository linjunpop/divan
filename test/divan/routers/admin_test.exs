defmodule Divan.Routers.AdminTest do
  use ExUnit.Case, async: true
  use Plug.Test

  alias Divan.Router.Admin

  @opts Admin.init([])

  test "create a user" do
    conn =
      conn(:post, "/_user/")
      |> Admin.call(@opts)

    assert conn.status == 201
  end

  test "update a user" do
    conn =
      conn(:put, "/_user/any_user_id")
      |> Admin.call(@opts)

    assert conn.status == 200
  end
end
