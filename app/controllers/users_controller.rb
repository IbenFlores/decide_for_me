class UsersController < ApplicationController
  def profile
    skip_authorization
    @user = current_user
    @users = User.all
  end
end
