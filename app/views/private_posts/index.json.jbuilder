json.array!(@private_posts) do |private_post|
  json.extract! private_post, :id, :title, :body
  json.url private_post_url(private_post, format: :json)
end
