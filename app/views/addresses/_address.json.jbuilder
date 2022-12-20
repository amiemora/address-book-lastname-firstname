json.extract! address,
              :id,
              :person_id,
              :street,
              :town,
              :zip,
              :state,
              :created_at,
              :updated_at,
              :people_id,
              :country,
              :user_id
json.url address_url(address, format: :json)
