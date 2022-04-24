class AddAttributesToSettings < ActiveRecord::Migration[6.0]
  def change
    add_column :settings, :space_title_1, :string
    add_column :settings, :space_title_2, :string
    add_column :settings, :space_title_3, :string
  end
end
