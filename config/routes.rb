Rails.application.routes.draw do

  root            to: 'static_pages#index'
  get 'sobre',    to: 'static_pages#sobre'
  get 'contato',  to: 'static_pages#contato'
  get 'teste',    to: 'static_pages#teste'

  get 'cadastro', to: 'users#new'
  get 'entrar',   to: 'sessions#new'
  get 'entrarComer', to: 'sessions#newComer'
  post 'entrar',  to: 'sessions#create'
  delete 'sair',  to: 'sessions#destroy'

  resources :users, only: [:show, :new, :create, :edit, :update] do
    resources :contacts, only: [:index, :new, :create, :edit, :update, :destroy]
  end
  resources :sessions, only: [:new, :create, :destroy]

end
