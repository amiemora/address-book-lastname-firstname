json.extract! email,
              :id,
              :person_id,
              :email_address,
              :comment,
              :created_at,
              :updated_at,
              :people_id,
              :user_id
json.url email_url(email, format: :json)
