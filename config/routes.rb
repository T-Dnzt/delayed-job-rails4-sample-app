Rails.application.routes.draw do
  get 'uploads/index'
  get 'uploads/format'
  get 'uploads/status'

  root 'uploads#index'
end
