defmodule Inmana.Supplies.Supply.Get do
  alias Inmana.Repo
  alias Inmana.Supplies.Schemas.Supply

  def call(uuid) do
    case Repo.get(Supply, uuid) do
      nil -> {:error, %{result: "Supply not found", status: :not_found}}
      supply -> {:ok, supply}
    end
  end
end
