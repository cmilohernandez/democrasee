class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :political_affiliation
      t.boolean :male
      t.date :dob

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
