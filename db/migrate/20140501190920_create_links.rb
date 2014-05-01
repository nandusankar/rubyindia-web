class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :anchor_text, limit: 1000
      t.string :url, limit: 1000
      t.references :article
      t.references :event
      t.timestamps
    end
  end
end
