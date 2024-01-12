json.extract! dossier, :id, :name, :created_at, :updated_at
json.url dossier_url(dossier, format: :json)
