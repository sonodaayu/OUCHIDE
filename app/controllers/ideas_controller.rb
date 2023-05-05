class IdeasController < ApplicationController
    before_action :authenticate_user!, only: [:new]
    def index
    end
    def new
        @ouchi = Ouchi.find(params[:ouchi_id])
        @idea  = Idea.new
    end
    def create
        @ouchi = Ouchi.find(params[:ouchi_id])
        @idea = @ouchi.ideas.build(idea_params)
        @idea.user_id = current_user.id
        if @idea.save!
            redirect_to controller: :ouchis, action: :show, id: @ouchi.id
        else
            redirect_to :action => "new"
        end
    end
    def destroy
        @idea = Idea.find(params[:id])
        @idea.destroy
        redirect_to controller: :user1s, action: :show, id: current_user.id
    end
    def show_destroy
        @idea = Idea.find(params[:id])
        @ouchi_id = @idea.ouchi_id
        @idea.destroy
        redirect_to ouchi_path(ouchi_id: @ouchi_id)
    end
    
    private
    def idea_params
        params.require(:idea).permit(:body)
    end

end