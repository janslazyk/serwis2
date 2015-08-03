class CreateStatisticRmas < ActiveRecord::Migration
  def change
    create_table :statistic_rmas do |t|
      t.integer :rma_id
      t.integer :element_rma_id
      t.integer :company_id
      t.integer :producent_id
      t.integer :user_id
      t.datetime :data_zgloszenia
      t.datetime :data_dostawy
      t.datetime :data_przyjecia
      t.datetime :data_wys_do_serwiu
      t.datetime :data_pow_z_serwisu
      t.datetime :data_naprawy
      t.datetime :data_odsyłki
      t.datetime :czas_naprawy_laczny
      t.datetime :czas_przestoju_logistyka
      t.datetime :czas_naprawy_csi
      t.datetime :czas_napr_w_serwisie

      t.timestamps null: false
    end
  end
end
