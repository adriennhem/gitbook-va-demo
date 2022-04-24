class AddDescriptionToSettings < ActiveRecord::Migration[6.0]
  def change
    add_column :settings, :space_description_1, :text
    add_column :settings, :space_description_2, :text
    add_column :settings, :space_description_3, :text
    add_column :settings, :button_text, :string
  end
end
