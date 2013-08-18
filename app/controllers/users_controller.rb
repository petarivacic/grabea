class UsersController < ApplicationController

def index
	@users = User.paginate(page: params[:page])
end


 def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
    @skills = @user.skills.all
    @educations = @user.educations.all
    @experiences = @user.experiences.all
end


end
