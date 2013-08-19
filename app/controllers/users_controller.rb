class UsersController < ApplicationController
 before_filter :authenticate_user!, only: [:index, :edit, :update, :following, :followers]
#before_filter :signed_in_user, 
 #               only: [:index, :edit, :update, :following, :followers]

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

def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
end

def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
end

def followers
	@title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
 end

 private

 def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
  end



end
