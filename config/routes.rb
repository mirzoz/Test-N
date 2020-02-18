Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      devise_for :users,
                 path: '',
                 path_names: {
                   sign_in: 'login',
                   sign_out: 'logout',
                   registration: 'signup'
                 },
                 controllers: {
                   sessions: 'sessions',
                   registrations: 'registrations'
                 }

      resources :random_arrays
    end
  end
end
