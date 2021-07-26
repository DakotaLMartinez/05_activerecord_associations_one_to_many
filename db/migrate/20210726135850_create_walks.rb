class CreateWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :walks do |t|
      t.boolean :number_two
      t.belongs_to :dog, foreign_key: true
      
      t.timestamps
    end
  end
end
