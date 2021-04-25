Free online event with a duration of 5 days, where it focuses on presenting how a particular technology works. 
In this case, start on the elixir trail looking for more knowledge about the functional language.

project aims to create an api/json that registered a restaurant, it is possible to add your supplies.
the responsibility of the API and informs each week which are the items that will lose the validity period of that week.

in the terminal, following commands to execute the project:
A) `docker-compose up -d`
B) create the bank: `mix ecto.create`
c) Perform the migrations: `mix ecto.migrate`
d) add the dependencies: `mix deps.get`
E) compile the project and start the server: `mix phx.server`
   Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

F) F) Creating a restaurant in the application:
Route: POST http: // localhost: 4000 / api / restaurants
{
"name": "restaurant teste",
"email": "test@email.com"
}

Adding a supply to a restaurant:
Route: Post http: // localhost: 4000 / api / supplies 
{
"restaurant_id": "0fa77fc9-8a08-4db9-89dd-822a693e329c",
"descripion": "wheat",
"expiration_date": "2021-04-23",
"responsible": "Employee X"
}




## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
