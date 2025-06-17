# frozen_string_literal: true

CmsCore::Engine.routes.draw do
  get "/health/service", to: "health#index"
end
