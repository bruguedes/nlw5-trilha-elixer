defmodule InmanaWeb.RestaurantsView do
  use InmanaWeb, :view

  def render("create.json", %{restaurant: restaurant}) do
    %{
      message: "New restaurant created wich sucess",
      restaurant: restaurant
    }
  end
end
