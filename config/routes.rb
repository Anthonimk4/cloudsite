Rails.application.routes.draw do
  resources :archivos do
       resources :file_uploads, only: [:new, :create, :destroy]
     end
  end

