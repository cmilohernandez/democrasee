class CreateCongressmen < ActiveRecord::Migration
  def self.up
    create_table :congressmen do |t|
      t.string :name
      t.string :district
      t.string :party
      t.string :email
      t.string :phone_number
      t.string :twitter
      t.string :website
      t.timestamps
    end
  end
  
  def self.down
    drop_table :congressmen
  end
end