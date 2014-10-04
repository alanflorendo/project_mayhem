class CommentsController < ApplicationController

  def create
    @hypo = Hypo.find(params[:hypo_id])
    @comment = @hypo.comments.build(comment_params)
    @comment.update(user_id: current_user.id)
    20.times { puts "Comment Controller: CREATE"}
    p params
    if @comment.save
      redirect_to @hypo
    else
      @comments = @hypo.comments
      render :template => 'hypos/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :hypo_id, :user_id)
  end

end
