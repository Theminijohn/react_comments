class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :text

      t.timestamps null: false
    end
    add_index :comments, :author
  end
end
