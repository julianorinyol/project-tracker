class CreateContentPieces < ActiveRecord::Migration
  def change
    create_table :content_pieces do |t|
      t.references :project
      t.string :text
      t.timestamps null: false
    end
  end
end
