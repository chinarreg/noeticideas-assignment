class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.integer :number
      t.decimal :amount, precision: 12, scale: 3
      t.datetime :date
      t.text :to_address
      t.text :from_address
      t.text :notes

      t.timestamps
    end
  end
end
