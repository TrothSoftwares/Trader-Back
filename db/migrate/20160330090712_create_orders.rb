class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.date :duedate
      t.integer :totalunits
      t.decimal :totalcost , :precision => 8, :scale => 2
      t.string :orderstatus
      t.references :customer , index: true, foreign_key: true
      t.string :hsncode
      t.decimal :rateoftax , :precision => 8, :scale => 2 , :default => 5.0
      t.decimal :exciseduty , :precision => 8, :scale => 2
      t.decimal :cashdiscount , :precision => 8, :scale => 2
      t.decimal :nettaxablevalue , :precision => 8, :scale => 2
      t.decimal :tax , :precision => 8, :scale => 2
      t.decimal :roundoff , :precision => 8, :scale => 2
      t.decimal :diecost , :precision => 8, :scale => 2
      t.decimal :misc , :precision => 8, :scale => 2
      t.decimal :totalcost , :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
