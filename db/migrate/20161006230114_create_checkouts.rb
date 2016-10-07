class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :tape_id
      t.integer :location_id
      t.integer :user_id
    end
  end
end
