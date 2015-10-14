json.array!(@content_pieces) do |content_piece|
  json.extract! content_piece, :id
  json.url content_piece_url(content_piece, format: :json)
end
