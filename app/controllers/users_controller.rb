class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  before_action :find_id_user, only: [ :show ]
  def home
     @users = User.all
  end

  def show

  end

  private

  def find_id_user
    @user = User.find(params[:id])
  end
end
