class AddRelationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :group_id, :integer
    add_column :users, :company_id, :integer	
  end
end
