class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.integer :created_by
      t.integer :topic

      t.timestamps
    end
  end
end
