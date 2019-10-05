# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# FactoryGirl
require 'factory_girl'
Dir[Rails.root.join('spec/factories/**/*.rb')].each { |f| require f }

Account.delete_all
Use.delete_all

FactoryGirl.create(:wallet)
