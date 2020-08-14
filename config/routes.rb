Rails.application.routes.draw do
  
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'static#home'
  get '/rules' => 'static#rules'
  get '/skills' => 'skill#index'
  get "/warbands/add_to_warband" => 'warbands#add_to_warband'
  post "/warbands/add_to_warband" => 'warbands#add_to_warband'
  get '/warbands/sell_wyrdstone' => "warbands#sell_wyrdstone"
  get '/warbands/add_wyrdstone' => "warbands#add_wyrdstone"

  get '/equipment/sell' => 'equipment#sell'
  get '/equipment/delete' => 'equipment#destroy'
  get '/equipment/sell_armour' => 'equipment#sell_armour'
  get '/equipment/delete_armour' => 'equipment#destroy_armour'
  get '/skill/destroy' => "skill#destroy"

  resources :skill, only: [:show, :index, :destroy]
  resources :equipment
  resources :warriors
  resources :warbands do
    resources :warriors, only: [:new, :show, :edit]
  end
  resources :users do
    resources :warbands, only: [:show, :index, :new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
