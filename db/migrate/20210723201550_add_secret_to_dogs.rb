class AddSecretToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :secret, :string
  end
end
