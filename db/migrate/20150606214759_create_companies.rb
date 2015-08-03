class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false, default: ""
      t.string :short_name
      t.string :ardress, null: false, default: ""
      t.string :ardress_do_odsylki, null: false, default: ""
      t.string :email
      t.string :tel

      t.timestamps null: false
    end
  end
end
