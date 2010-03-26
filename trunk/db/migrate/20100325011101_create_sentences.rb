class CreateSentences < ActiveRecord::Migration
  def self.up
    create_table :sentences do |t|
      t.boolean :isRaw
      t.text :text
      t.integer :votes_up
      t.integer :votes_down
      t.integer :flag_votes
      
      t.references :user
      t.references :sentence

      t.timestamps
    end
  end

  def self.down
    drop_table :sentences
  end
end
