class Dossier < ApplicationRecord
  has_many :contracts, dependent: :destroy
  broadcasts_refreshes
end
