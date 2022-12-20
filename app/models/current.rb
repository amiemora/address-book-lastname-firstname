class Current < ActiveSupport::CurrentAttributes
  # allows us to have access to the current user
  attribute :user
end
