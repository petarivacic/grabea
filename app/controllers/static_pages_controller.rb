class StaticPagesController < ApplicationController
  
  def home
  	if signed_in?
  		@micropost = current_user.microposts.build
  		@feed_items = current_user.feed.paginate(page: params[:page])
      @user 
      @question = Question.last
  	end

  end

  def help
    if signed_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @user = current_user
      

    end
  end

  def about
  end

  def contact
  end
end
