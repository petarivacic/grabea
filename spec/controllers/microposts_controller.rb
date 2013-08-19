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


  





end