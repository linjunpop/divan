defmodule Divan.Router.Public do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    body = ~S({
      "couchdb":"Welcome",
      "vendor":{
        "name":"Couchbase Sync Gateway",
        "version":1.4
      }
    })

    conn
    |> build_conn()
    |> send_resp(200, body)
  end

  defp build_conn(conn) do
    conn
    |> put_resp_content_type("application/json")
  end
end
