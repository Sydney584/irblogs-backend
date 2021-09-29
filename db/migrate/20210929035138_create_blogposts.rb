class CreateBlogposts < ActiveRecord::Migration[6.1]
  def change
    create_table :blogposts do |t|
      t.string :title
      t.text :content
      t.string :img_url
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
