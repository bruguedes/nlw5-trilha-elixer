defmodule Inmana.Supplies.Schemas.Supply do
  use Ecto.Schema
  alias Inmana.Restaurants.Schemas.Restaurant
# import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  @required_params [:descripion, :expiration_date, :responsible, :restaurant_id ]

  @derive {Jason.Encoder, only: @required_params ++ [:id]}

  schema "supplies" do

    field :descripion, :string
    field :expiration_date, :date
    field :responsible, :string

    belongs_to :restaurant, Restaurant

    timestamps()
  end

end

    #  field :descripion, :string
    #  field :expiration_date, :date
    #  field :responsible, :string
    #  field :restaurant_id, references(:restaurants, type: :binary_id)
