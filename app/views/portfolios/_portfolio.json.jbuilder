json.extract! portfolio, :id, :title, :description, :url, :repository, :references, :created_at, :updated_at
json.url portfolio_url(portfolio, format: :json)
