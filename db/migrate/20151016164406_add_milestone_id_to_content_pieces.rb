class AddMilestoneIdToContentPieces < ActiveRecord::Migration
  def change
    add_column :content_pieces, :milestone_id, :integer
  end
end
