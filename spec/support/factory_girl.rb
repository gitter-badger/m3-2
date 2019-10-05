# frozen_string_literal: true

RSpec.configure do |config|
  config.before(:all) do
    FactoryGirl.reload
  end
end
