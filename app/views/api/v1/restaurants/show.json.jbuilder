json.extract! @restaurant, :id, :name, :address, :image, :description
json.reviews @restaurant.comments do |comment|
  json.extract! comment, :id, :name, :content, :image
  json.date comment.created_at.strftime("%m/%d/%y")
end
