class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :show ]
  before_action :find_id_user, only: [ :show ]

  def home
     @users = User.all
     @background_link = "home"


       respond_to do |format|
           format.html {} #redirect_to restaurant_path(@restaurant) }
           format.js {  } # <-- will render `app/views/reviews/create.js.erb`
       end
  end

  def show
    @background_link = "show"
     respond_to do |format|
         format.html {} #redirect_to restaurant_path(@restaurant) }
         format.js  { }# <-- will render `app/views/reviews/create.js.erb`
       end
  end

  private

  def find_id_user
    @user = User.find(params[:id])
  end
end


