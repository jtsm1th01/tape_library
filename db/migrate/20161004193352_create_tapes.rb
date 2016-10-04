class CreateTapes < ActiveRecord::Migration
  def change
    create_table :tapes do |t|
      t.string :name
      t.string :description
      t.references :location
      t.references :format
    end
  end
end
