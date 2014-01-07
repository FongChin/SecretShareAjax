SecretShareAjax::Application.routes.draw do
  resources :secrets, :only => [:create]
  resources :users, :only => [:create, :new, :show, :index] do
    resources :secrets, :only => [:new]
    resource :friendship, :only => [:create, :destroy]
  end
  resource :session, :only => [:create, :destroy, :new]
  root :to => "users#show"
end
