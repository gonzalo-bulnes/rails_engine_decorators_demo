class CreatePrivatePosts < ActiveRecord::Migration
  def change
    create_table :private_posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
