class CreateSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.string :jwt_token_1
      t.string :jwt_token_2
      t.string :jwt_token_3
      t.string :space_name_1
      t.string :space_name_2
      t.string :space_name_3
      t.integer :user_id

      t.timestamps
    end
  end
end
