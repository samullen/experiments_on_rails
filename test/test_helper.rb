ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/rails/capybara"

include FactoryGirl::Syntax::Methods
Dir[Rails.root.join("test/support/**/*.rb")].each {|f| require f}

class MiniTest::Spec
  before :each do
    DatabaseCleaner.start
  end

  after :each do
    DatabaseCleaner.clean
  end
end

class ActiveSupport::TestCase
  fixtures :all

  self.use_transactional_fixtures = true
end
