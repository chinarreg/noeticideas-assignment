class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.decimal :amount, precision: 12, scale: 3
      t.datetime :date
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
