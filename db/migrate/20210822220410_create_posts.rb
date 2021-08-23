class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :visits
      t.integer :average
      t.boolean :published

      t.timestamps
    end
  end
end