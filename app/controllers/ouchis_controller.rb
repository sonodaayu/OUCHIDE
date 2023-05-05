class OuchisController < ApplicationController
    def index
        @ouchi=Ouchi.all 
    end
    def show
        @ouchi=Ouchi.find(params[:id])
        @new=@ouchi.topic+'の新規投稿画面へ'
        @ideas = @ouchi.ideas.all.order("created_at DESC")
        @img_movie = 'movie3.jpg'
        @img_cooking = 'cooking2'
        @img_animals = 'pets1.jpg'
        @img_interiors = 'interior2.jpg'
        @img_shopping = 'shopping1.jpg'
        @img_workout = 'workout1.jpg'
        @img_games = 'games2.jpg'
    end
    def rank
        @ouchi=Ouchi.find(params[:id])
        @new=@ouchi.topic+'の新規投稿画面へ'
        @ideas = Idea.includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
        @img_movie = 'movie3.jpg'
        @img_cooking = 'cooking2'
        @img_animals = 'pets1.jpg'
        @img_interiors = 'interior2.jpg'
        @img_shopping = 'shopping1.jpg'
        @img_workout = 'workout1.jpg'
        @img_games = 'games2.jpg'
    end

end
