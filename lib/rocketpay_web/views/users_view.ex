defmodule RocketpayWeb.UsersView do
  def render("create.json", %{user: user}) do
    %{
      message: "User created",
      user: %{
        id: user.id,
        email: user.email,
        nickname: user.nickname,
        age: user.age
      }
    }
  end
end
