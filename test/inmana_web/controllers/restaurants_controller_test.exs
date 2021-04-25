defmodule InmanaWeb.RestaurantsControllerTest do
  use InmanaWeb.ConnCase

  describe "create/2" do
    test "When all params are valide, creates the user", %{conn: conn} do
      params = %{name: "Café da Telma", email: "telma@email.com"}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:created)

      assert %{
               "message" => "New restaurant created wich sucess",
               "restaurant" => %{
                 "email" => "telma@email.com",
                 "id" => _id,
                 "name" => "Café da Telma"
               }
             } = response
    end

    test "When there are invalid params, return an error", %{conn: conn} do
      params = %{email: "telma@email.com"}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:bad_request)

      assert response == %{"message" => %{"name" => ["can't be blank"]}}
    end
  end
end
