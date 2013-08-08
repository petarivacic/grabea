class UsersController < ApplicationController

  def show
    @user = current_user
    if @user
    	render action: :show
    else
    	redirect_to(root_url) 
  end
end


end
