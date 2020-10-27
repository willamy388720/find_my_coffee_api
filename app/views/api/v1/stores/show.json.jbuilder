json.id @store.id
json.lonlat @store.lonlat
json.name @store.name
json.address @store.address
json.google_places_id @store.google_places_id

json.ratings @store.ratings do |rating|
  json.value rating.value
  json.opinion rating.opinion
  json.user_name rating.user_name
  json.date rating.created_at.strtime('%d/%m/%Y')
end

json.ratings_counts @store.ratings.count
json.ratings_average @store.ratings_average
