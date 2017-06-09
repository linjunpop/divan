defmodule Divan do
  def child_spec do
    Plug.Adapters.Cowboy.child_spec(
      :http,
      Divan.Router,
      [],
      Divan.Config.load_config()
    )
  end
end
