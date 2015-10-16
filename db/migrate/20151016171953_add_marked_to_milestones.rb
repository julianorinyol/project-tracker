class AddMarkedToMilestones < ActiveRecord::Migration
  def change
    add_column :milestones, :marked, :boolean
  end
end
