class AddColumnsToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :leader_id, :integer
    add_column :organizations, :name, :string
    add_column :organizations, :description, :string
    add_column :organizations, :contact_email, :string
  end
end
