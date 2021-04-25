defmodule Inmana.Supplies.InputsVerification.Changeset do
  import Ecto.Changeset
  alias Inmana.Supplies.Schemas.Supply

  @required_params [:descripion, :expiration_date, :responsible, :restaurant_id ]

  def changeset(params) do
    %Supply{}
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_length(:responsible, min: 3)
  end

end
