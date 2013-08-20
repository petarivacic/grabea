class MicropostsController < ApplicationController

  def index
  end

  def create
  	@micropost = current_user.microposts.build(params[:micropost])
    
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end


  def destroy
  
  end

  def upvote
    
    @micropost = Micropost.find(params[:id])
    @micropost.liked_by current_user
    @micropost.likes.size
    redirect_to :back
    
  end

  def downvote
    @micropost = Micropost.find(params[:id])
    @micropost.downvote_from current_user
    @micropost.dislikes.size
    redirect_to :back                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
  end



end