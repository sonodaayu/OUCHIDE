Rails.application.routes.draw do
  devise_for :users
  root 'ouchis#index'
  get 'ouchis' => 'ouchis#index'
  get 'ideas/index' => 'ideas#index'
  get 'ouchis/:id' => 'ouchis#show', as: 'ouchi'
  get 'ideas/new/:ouchi_id' => 'ideas#new', as: 'ideas_new'
  post 'ideas/:ouchi_id' => 'ideas#create', as: 'ouchi_ideas'
  delete 'ideas/:id' => 'ideas#destroy', as: 'idea_delete'
  delete 'ideas/show/:id' => 'ideas#show_destroy', as: 'idea_delete_show'
  get 'ouchis/rank/:id' => 'ouchis#rank', as: 'ouchis_rank'
  get 'user1s/show/:id' => 'user1s#show', as: 'mypage'

  resources :ouchis do
    resources :ideas
  end
  resources :ideas do
    resources :likes, only: [:create, :destroy]
  end
end