class AddDossierReferencesToContracts < ActiveRecord::Migration[7.1]
  def change
    add_reference :contracts, :dossier, null: false, foreign_key: true
  end
end
