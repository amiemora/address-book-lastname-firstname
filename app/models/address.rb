class Address < ApplicationRecord
  belongs_to :person
  belongs_to :user

  validates :street, :town, :zip, presence: true
end
