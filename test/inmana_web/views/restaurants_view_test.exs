defmodule InmanaWeb.RestaurantsViewTest do
  use InmanaWeb.ConnCase

  import Phoenix.View

  alias InmanaWeb.RestaurantsView

  describe "render/2" do
    test "renders create.json" do
      params = %{name: "Café da Telma", email: "telma@email.com"}
      {:ok, restaurant} = Inmana.create_restaurant(params)
      response = render(RestaurantsView, "create.json", restaurant: restaurant)

      assert %{
               message: "New restaurant created wich sucess",
               restaurant: %Inmana.Restaurants.Schemas.Restaurant{
                 email: "telma@email.com",
                 id: _id,
                 name: "Café da Telma"
               }
             } = response
    end
  end
end
