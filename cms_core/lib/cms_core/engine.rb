# frozen_string_literal: true

module CmsCore
  class Engine < ::Rails::Engine
    isolate_namespace CmsCore
  end
end