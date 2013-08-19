class CommentController < ApplicationController
  before_filter :load_commentable
  before_filter :find_comment, :only => [:upvote, :downvote]



  def upvote
    current_user.upvotes @comment
    redirect_to(@comment.commentable)
  end

  def downvote
    @comment.downvote_from current_user
    redirect_to(@comment.commentable)
  end




private

  def load_commentable
    resource, id = request.path.split('/')[1, 2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end

  def find_comment
    @comment = Comment.find(@commentable.id)
  end


end
end
