json.extract! ordr, :id, :orderno, :trackno, :paytype, :total, :orderdate, :user_id, :address_id, :created_at, :updated_at
json.url ordr_url(ordr, format: :json)
