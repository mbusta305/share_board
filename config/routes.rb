 Rails.application.routes.draw do
  devise_for :users
  resources :pins do
    put "like", to: "pins#upvote"
  end

  root "pins#index"
end
