class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :message
      t.references :idea, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :ideas
  end
end
