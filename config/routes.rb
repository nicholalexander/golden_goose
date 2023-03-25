Rails.application.routes.draw do
  resource :eggs, only: :show
end
