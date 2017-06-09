defmodule Divan.Router.Admin do
  use Plug.Router

  plug :match
  plug :dispatch

  post "/:db/_user/" do
    body = ~S({})

    conn
    |> build_conn()
    |> send_resp(201, body)
  end

  put "/:db/_user/:id" do
    body = ~S({})

    conn
    |> build_conn()
    |> send_resp(200, body)
  end

  delete "/:db/_user/:id" do
    body = ~S({})

    conn
    |> build_conn()
    |> send_resp(200, body)
  end

  defp build_conn(conn) do
    conn
    |> put_resp_content_type("application/json")
  end
end
