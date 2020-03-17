class CreateChapters < ActiveRecord::Migration[6.0]
  def change
    create_table :chapters do |t|
      t.text :content
      t.string :email
      t.integer :order
      t.integer :story_id

      t.timestamps
    end
  end
end
