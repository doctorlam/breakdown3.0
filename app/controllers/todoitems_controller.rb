class TodoitemsController < ApplicationController
	

	def create
		@project = Project.find(params[:project_id])
		@milestone = Milestone.find(params[:milestone_id])
		@todoitem = @milestone.todoitems.create(todoitems_params)
		redirect_to @project
	end 

	def destroy 
		@todoitem = @milestone.todoitems.find(params[:id])
		if @todoitem.destroy
			flash[:success] = "Milestone Deleted"
		else
			flash[:error] = "Milestone item couldn't be deleted"
		end 
		redirect_to @project
	end 


private

def todoitems_params 
	params.require(:todoitem).permit(:description, :completed)
end


end

