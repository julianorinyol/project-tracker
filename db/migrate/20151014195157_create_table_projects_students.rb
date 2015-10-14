class CreateTableProjectsStudents < ActiveRecord::Migration
  def change
    create_table :table_projects_students do |t|
      t.references :students
      t.references :projects
    end
  end
end
