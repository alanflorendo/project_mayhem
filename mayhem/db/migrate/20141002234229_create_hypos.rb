class CreateHypos < ActiveRecord::Migration
  def change
    create_table :hypos do |t|
    	t.string :title
    	t.string :law_name
    	t.date :law_sponsor_date
    	t.string :sponsor_name
    	t.string :sponsor_city
    	t.string :sponsor_state
    	t.string :precip_amount
    	t.boolean :is_tornado
    	t.boolean :is_hurricane
    	t.boolean :is_flood
    	t.integer :vote_count, default: 0

        t.integer :user_id

      t.timestamps
    end
  end
end
