Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'
  get 'tags' =>'tags#index'
  get 'tag/:id' =>'tags#show'
  scope "(:locale)" do
    get '/:locale/tags' =>'tags#index'
    get '/:locale/tag/:id' =>'tags#show'

    get '/:locale' => 'home#index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
