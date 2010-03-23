class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.date :date
      t.string :ynea
      t.references :bill
      t.references :congressman

      t.timestamps
    end
  end

  def self.down
    drop_table :votes
  end
end
