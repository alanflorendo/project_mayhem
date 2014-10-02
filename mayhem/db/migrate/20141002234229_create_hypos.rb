class CreateHypos < ActiveRecord::Migration
  def change
    create_table :hypos do |t|

      t.timestamps
    end
  end
end
