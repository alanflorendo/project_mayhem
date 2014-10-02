class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :text
      t.integer :hypo_id
      t.integer :user_id
      t.integer :vote_count, default: 0


      t.timestamps
    end
  end
end
