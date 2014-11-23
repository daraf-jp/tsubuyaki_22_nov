json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :user_id, :content
  json.url tweet_url(tweet, format: :json)
end
