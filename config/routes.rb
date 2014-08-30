Rails.application.routes.draw do
  get 'uploads/index'
  get 'uploads/format'
  get 'uploads/status/:document_id', to: 'uploads#status', as: 'uploads_status'

  root 'uploads#index'
end
