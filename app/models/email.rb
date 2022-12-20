class Email < ApplicationRecord
  belongs_to :person
  belongs_to :user
  validates :email_address, presence: true
end
