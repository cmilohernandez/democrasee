class CreateBills < ActiveRecord::Migration
  def self.up
    create_table :bills do |t|
      t.text :content
      t.string :sponsors
      t.date :intro_date
      t.string :status
      t.text :abstract
      t.string :bill_number
      t.timestamps
    end
  end

  def self.down
    drop_table :bills
  end
end
