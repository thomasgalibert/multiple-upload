class Contract < ApplicationRecord
  has_one_attached :fichier
  belongs_to :dossier, touch: true
  broadcasts_refreshes
end
