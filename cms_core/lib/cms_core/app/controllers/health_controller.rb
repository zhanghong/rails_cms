# frozen_string_literal: true

module CmsCore
  class HealthController < ApplicationController
    def index
      render json: { status: "ok" }
    end
  end
end