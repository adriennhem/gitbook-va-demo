class AddThemesToSettings < ActiveRecord::Migration[6.0]
  def change
    add_column :settings, :bg_color, :string, default: "#ffffff"
    add_column :settings, :jumbo_bg_color, :string, default: "#333D55"
    add_column :settings, :button_bg_color, :string, default: "#1858D7"
    add_column :settings, :button_text_color, :string, default: "#ffffff"
    add_column :settings, :link_color, :string, default: "#205ED6"
    add_column :settings, :jumbo_title_text, :string, default: "Documentation"
    add_column :settings, :jumbo_description_text, :string, default: "API references, developer guides, and quick starts for the engineering team"
  end
end
