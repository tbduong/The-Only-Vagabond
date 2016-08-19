class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :text
      t.date :date_post
      t.integer :user_id
      t.integer :city_id

      t.timestamps
    end
  end
end
