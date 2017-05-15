class CommentsController < ApplicationController

	before_action :find_lecture
	def create

	 @comment = @lecture.comments.create(params[:comment].permit(:content))	
	 # @comment.User_id = current_user.User_id
	 @comment.save


		 if @comment.save
		 	redirect_to lecture_path(@lecture)
		 else
		 	render 'new'
		 end		
	end

	def destroy
		@comment = @lecture.comments.find(params[:id])
		@comment.destroy
		redirect_to lecture_path(@lecture)
	end	


	private

	def find_lecture

		@lecture= Lecture.find(params[:lecture_id])	
	end	

	def find_comment
		@comments = @lecture.comments.find(params[:d])
	end	

end
