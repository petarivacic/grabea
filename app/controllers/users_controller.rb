class UsersController < ApplicationController

def index
	@users = User.paginate(page: params[:page])
end


  def show
    @user = current_user
    if @user
    	render action: :show
    else
    	redirect_to(root_url) 
  end
end


end
