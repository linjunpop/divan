defmodule Divan.Config do
  def load_config(Divan.Router.Public) do
    [
      port: 4984
    ]
  end
  def load_config(Divan.Router.Admin) do
    [
      port: 4985
    ]
  end
end
