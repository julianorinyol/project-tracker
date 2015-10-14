class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :requirement
      t.datetime :due_date
      t.string :status
      t.belongs_to :project, index: true
      t.timestamps null: false
    end
  end
end
