class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards, :primary_key => :number do |t|
      t.string :status
      t.integer :points
      t.timestamps
    end
  end
end
