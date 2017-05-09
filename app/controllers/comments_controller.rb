class CommentsController < ApplicationController
	before_action :authenticate_user!
	def create
		@comment = Comment.new(comment_params)
		@comment.save
		redirect_to @comment.idea
	end
	private
	
	def comment_params
		params.require(:comment).permit(:name, :message, :idea_id)
	end
end
