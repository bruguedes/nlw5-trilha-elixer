defmodule Inmana.Restaurants.Restaurant.Create do
  alias Inmana.Repo
  alias Inmana.Restaurants.InputsVerification.Changeset
  alias Inmana.Restaurants.Schemas.Restaurant


  def call(params) do
    params
    |> Changeset.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Restaurant{}} = result), do: result
  defp handle_insert({:error, result}), do: {:error, %{result: result, status: :bad_request}}

end
