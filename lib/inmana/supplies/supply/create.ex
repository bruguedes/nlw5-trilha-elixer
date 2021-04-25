defmodule Inmana.Supplies.Supply.Create do
  alias Inmana.Repo
  alias Inmana.Supplies.InputsVerification.Changeset
  alias Inmana.Supplies.Schemas.Supply

  def call(params) do
    params
    |> Changeset.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Supply{}} = result), do: result
  defp handle_insert({:error, result}), do: {:error, %{result: result, status: :bad_request}}
end
