class CreateMedicationOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :medication_orders do |t|
      t.string :name
      t.integer :unit, default: 0
      t.string :dosage
      t.integer :route, default: 0
      t.references :order_frequency, foreign_key: true
      t.references :patient, foreign_key: true
      t.timestamps
    end
  end

end
