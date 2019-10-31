class UsersController < ApplicationController
  def show
  @user = User.find(params[:id])
  end

  def new
  @user = User.new
  end

  def create
  @user = User.new(email: params["email"], password: params["password"], city_id: 21)
   			

    if @user.save # essaie de sauvegarder en base @user
      flash[:notice] = "User successfully created"
      redirect_to root_path# si ça marche, il redirige vers la page d'index du site
    else
    flash[:notice] = "User creation failed"
      redirect_to new_user_path # sinon, il redirige vers la view new (qui est celle sur laquelle on est déjà)
    end
  end

end
