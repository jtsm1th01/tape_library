class CreateShowsTapesJoinTable < ActiveRecord::Migration
  def change
    create_table :shows_tapes, id: false do |t|
      t.integer :show_id
      t.integer :tape_id
    end
  end
end
