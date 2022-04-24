class AddUrlToSettings < ActiveRecord::Migration[6.0]
  def change
    add_column :settings, :url, :string
  end
end
