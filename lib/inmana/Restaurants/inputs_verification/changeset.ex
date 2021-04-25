defmodule Inmana.Restaurants.InputsVerification.Changeset do
  import Ecto.Changeset
  alias Inmana.Restaurants.Schemas.Restaurant

  @required_params [:email, :name]

  def changeset(params) do
    %Restaurant{}
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_length(:name, min: 2)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint([:email])

  end

end
