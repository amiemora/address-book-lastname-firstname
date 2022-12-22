class PhoneNumber < ApplicationRecord
  belongs_to :person
  belongs_to :user
  validates :phone_number, presence: true
end
