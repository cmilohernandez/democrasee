class AddBillIdToSentence < ActiveRecord::Migration
  def self.up
    change_table :sentences do |t|
      t.references :bill
    end
    
  end

  def self.down
    change_table :sentences do |t|
      t.remove :bill
    end
  end
end
