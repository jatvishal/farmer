Rails.application.routes.draw do
  get 'welcome/homepage'
  resources :contacts
  get 'welcome/signup'
  get 'welcome/aboutUs'
  get 'contacts/new'
  get 'contacts/show'  
end
