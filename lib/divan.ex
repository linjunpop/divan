defmodule Divan do
  def child_spec(module) when module in [Divan.Router.Public, Divan.Router.Admin] do
    Plug.Adapters.Cowboy.child_spec(
      :http,
      module,
      [name: module],
      Divan.Config.load_config(module)
    )
  end
end
