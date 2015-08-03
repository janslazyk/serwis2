class CreateMasterRmas < ActiveRecord::Migration
  def change
    create_table :master_rmas do |t|
      t.integer :element_rma_id
      t.integer :user_id
      t.integer :master
      t.string :czynnosci

      t.timestamps null: false
    end
  end
end
