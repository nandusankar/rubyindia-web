class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, limit: 1000
      t.string :title_link,  limit: 2000
      t.text   :description
      t.references :issue
      t.timestamps
    end
  end
end
