class AddCloseToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :close, :boolean, default: false
  end
end
