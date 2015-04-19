json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :category1, :category2
  json.url post_url(post, format: :json)
end
