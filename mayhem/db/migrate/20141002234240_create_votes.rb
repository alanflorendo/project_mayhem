class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user
      t.integer :voteable_id, polymorphic: true
      t.string :voteable_type

      t.timestamps
    end
  end
end
