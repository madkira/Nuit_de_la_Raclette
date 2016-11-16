ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require "shoulda/matchers"

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|

  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = true

  config.include Devise::TestHelpers, type: :controller

  config.before(:each) do
      ActionMailer::Base.deliveries.clear
      DatabaseCleaner.clean_with(:truncation)
      load Rails.root.join("db/seeds.rb")
  end
  config.infer_spec_type_from_file_location!
end
