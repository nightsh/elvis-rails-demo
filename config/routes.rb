ElvisRails::Application.routes.draw do


  defaults format: "json" do

    devise_for :users, controllers: { sessions: 'sessions', passwords: 'passwords', confirmations: 'confirmations' }

    namespace :v1, :defaults => {:format => :json} do

      resources :users, :only => [:update, :destroy,:create, :show, :index]

      resources :accounts, :only => [:show,:update]

    end
  end

end
