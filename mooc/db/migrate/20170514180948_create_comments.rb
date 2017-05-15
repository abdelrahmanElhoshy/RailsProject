class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :User, index: true, foreign_key: true
      t.references :lecture, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
