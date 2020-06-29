class UsersController < ApplicationController
  def profile
    skip_authorization
    @user = current_user
  end
end
