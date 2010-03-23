class CreateBillsCongressmen < ActiveRecord::Migration
  def self.up
    create_table :bills_congressmen, {:id => false} do |t|
      t.references :bill
      t.references :congressman
    end
  end

  def self.down
    drop_table :bills_congressmen
  end
end
