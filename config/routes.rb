Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, constraints: { format: :json } do
    get 'recipes' => 'recipes#all'
    get 'recipe' => 'recipes#show'
    post 'ingredients' => 'recipes#ingredients_search'
  end

end
