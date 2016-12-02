Rails.application.routes.draw do
  devise_for :organisations
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'
  get 'connect' =>redirect("organisations/sign_in")
  get 'compte/:login/:passwd' => 'organisations#true'
  scope "(:locale)" do
    get '/:locale/connect' =>redirect("/:locale/organisations/sign_in")
    get '/:locale' => 'home#index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
