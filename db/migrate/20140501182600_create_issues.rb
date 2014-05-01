class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.text :editor_note
      t.timestamps
    end
  end
end
