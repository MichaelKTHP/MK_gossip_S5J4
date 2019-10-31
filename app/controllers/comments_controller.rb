class CommentsController < ApplicationController
  def edit
  end

 def new
  @comment =Comment.new
  end

  def create
  	@comment = comment.new(commentable_id:params["gossip_id"],user_id:21)
   

    if @comment.save # essaie de sauvegarder en base @gossip
      flash[:notice] = "comment successfully created"
      redirect_to gossip_path(params["gossip_id"])
      # si ça marche, il redirige vers la page du gossip
    else
    flash[:notice] = "Post fail"
     # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end
  end
end
