# frozen_string_literal: true

json.extract! use, :id, :name, :created_at, :updated_at
json.url use_url(use, format: :json)
