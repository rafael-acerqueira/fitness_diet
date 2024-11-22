class CreateDailyEnergyExpenditures < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_energy_expenditures do |t|
      t.integer  :age
      t.float    :weight
      t.integer  :height
      t.float    :activity

      t.timestamps
    end
  end
end
