class CreateOwnerTable < ActiveRecord::Migration
  def change
    create_table :owners do |t|
     t.string :name, limit: 30
     t.boolean :status
     t.timestamps
    end
  end
end
