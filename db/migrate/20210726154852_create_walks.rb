class CreateWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :walks do |t|
      t.boolean :number_two
      t.datetime :started_at
      t.belongs_to :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
