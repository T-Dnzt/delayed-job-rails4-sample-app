Rails.application.routes.draw do
  get 'uploads/index'
  get 'uploads/upload'
  get 'uploads/status'

  root 'uploads#index'
end
