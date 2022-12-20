json.extract! phone_number,
              :id,
              :person_id,
              :phone_number,
              :comment,
              :created_at,
              :updated_at,
              :people_id,
              :user_id
json.url phone_number_url(phone_number, format: :json)
