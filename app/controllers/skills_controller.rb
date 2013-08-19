class SkillsController < ApplicationController
	def create
		@skill = current_user.skill.build(params[:skill])
    
	    if @skill.save
	      flash[:success] = "Skill Added"
	      redirect_to 'static_pages/help'
	    else
	      @feed_items = []
	      render 'static_pages/home'
	    end
	end
end
