class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :tag_id
      t.integer :post_id

      t.timestamps
    end
  end
end
