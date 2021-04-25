defmodule Inmana do
  @moduledoc """
  Inmana keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  alias Inmana.Restaurants.Restaurant.Create, as: RestaurantCreate
  alias Inmana.Supplies.Supply.Create, as: SupplyCreate
  alias Inmana.Supplies.Supply.Get, as: SupplyGet

  defdelegate create_restaurant(params), to: RestaurantCreate, as: :call

  defdelegate create_supply(params), to: SupplyCreate, as: :call

  defdelegate get_supply(params), to: SupplyGet, as: :call
end
