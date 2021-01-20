class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.boolean :like
      t.boolean :dislike
      t.text :replies

      t.timestamps
    end
  end
end
