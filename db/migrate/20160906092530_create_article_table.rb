class CreateArticleTable < ActiveRecord::Migration
  def change
    create_table :articles do |t|
     t.integer :owner_id, limit: 8
     t.string :name, limit: 30
     t.decimal :price, precision: 10, scale: 2
     t.text :description
     t.boolean :status
     t.timestamps
    end
  end
end
