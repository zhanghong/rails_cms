Core::Engine.routes.draw do
  get "/health/service", to: "health#index"
end
