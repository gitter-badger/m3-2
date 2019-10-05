class Account < ApplicationRecord
  belongs_to :use
  has_many :history

  validates :name, presence: true
end
