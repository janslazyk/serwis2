class CreateElementRmas < ActiveRecord::Migration
  def change
    create_table :element_rmas do |t|
      t.integer :rma_id
      t.integer :lp
      t.integer :pn
      t.integer :sn
      t.string :producent
      t.text :opis_produktu
      t.datetime :data_sprzedazy
      t.datetime :koniec_gwarancji
      t.string :rma_klienta
      t.integer :na_gwarancji
      t.text :opis_usterki
      t.text :uwagi
      t.string :zalocznik
      t.datetime :data_przyjecia
      t.datetime :data_naprawy

      t.timestamps null: false
    end
  end
end
