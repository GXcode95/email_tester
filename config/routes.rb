Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
  post 'send/simple_email', to: 'home#send_simple_email'
  get 'send/email_with_attachments', to: 'home#email_with_attachments'
end
