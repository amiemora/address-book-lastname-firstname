class Person < ApplicationRecord
  belongs_to :user
  has_many :emails
  has_many :addresses
  has_many :phone_numbers

  validates :first_name, :last_name, presence: true
end
