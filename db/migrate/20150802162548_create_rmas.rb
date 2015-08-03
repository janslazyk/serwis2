class CreateRmas < ActiveRecord::Migration
  def change
    create_table :rmas do |t|
      t.integer :number
      t.integer :zgloszone
      t.integer :user_id
      t.integer :company_id
      t.string :contack_name_surname
      t.string :tel
      t.string :email
      t.text :opt_adres_wys
      t.datetime :data_zgloszenia

      t.timestamps null: false
    end
  end
end
