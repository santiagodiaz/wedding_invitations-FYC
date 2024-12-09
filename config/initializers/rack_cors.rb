# config/initializers/rack_cors.rb
# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*' # Change this to your frontend's URL in production
    resource '*',
             headers: :any,
             methods: %i[get post options put delete],
             expose: %w[access-token uid client]
  end
end
