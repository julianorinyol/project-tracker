class AddColumnsToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :employer_id, :integer
    add_column :organizations, :name, :string
    add_column :organizations, :description, :string
    add_column :organizations, :contact_email, :string
  end
end
