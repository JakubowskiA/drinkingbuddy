class UsersController < ApplicationController
  def create
    user = User.create!(user_params)
    token = JWT.encode({ user_id: user.id }, "secret")
    render json: { token: token, user: { id: user.id, username: user.username, name: user.name } }
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end
end
