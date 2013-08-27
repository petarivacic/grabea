class MicropostsController < ApplicationController
  include Twitter::Extractor

  def index
  end

  def create
  	@micropost = current_user.microposts.build(params[:micropost])
    @micropost.name = current_user.full_name
    
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to :back
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