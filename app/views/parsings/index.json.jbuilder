json.array!(@parsings) do |parsing|
  json.extract! parsing, :id, :link
  json.url parsing_url(parsing, format: :json)
end
