class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:new,:create]
 #before_action :is_owner, only: [:edit,:update,:destroy] (marche pas)



  def index
    @gossips=Gossip.all
  end

  def new
  @gossip =Gossip.new
  end

  def create
  	@gossip = Gossip.new(title: params["title"], content: params["content"],user_id:21)
    @gossip.user = current_user

    if @gossip.save # essaie de sauvegarder en base @gossip
      flash[:notice] = "Post successfully created"
      redirect_to root_path# si ça marche, il redirige vers la page d'index du site
    else
    flash[:notice] = "Post fail"
      redirect_to new_gossip_path# sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end
  end

 def show
@gossip = Gossip.find(params[:id])
 end

 def edit
@gossip = Gossip.find(params[:id])

 end

  def update
    gossipparams = params.require(:gossip).permit(:title, :content)
    @gossip = Gossip.find(params[:id])
    if @gossip.update(gossipparams)
    flash[:notice] = "Potin édité avec succès"
    redirect_to root_path
    else
    flash[:notice] = "Le potin n'a pas été édité"
    render :edit
  end
end

  def destroy
    @gossip = Gossip.find(params[:id]) 
    @gossip.destroy
    redirect_to root_path
  end

 private

  def authenticate_user
    unless current_user
      flash[:notice] = "Connectez-vous afin de pouvoir ajouter un potin "
      redirect_to new_session_path
    end
  end
  
  # marche pas
  # def is_owner
  #  unless is_owner?(@gossip.user.id)
  #  flash[:notice] = "Connectez-vous afin de pouvoir faire cela "
  #  redirect_to gossip_path
  #  end
  # end 

end
  