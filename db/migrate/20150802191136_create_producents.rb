class CreateProducents < ActiveRecord::Migration
  def change
    create_table :producents do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
