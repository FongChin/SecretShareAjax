class CreateSecretTaggings < ActiveRecord::Migration
  def change
    create_table :secret_taggings do |t|
      t.integer :tag_id, :null => false
      t.integer :secret_id, :null => false

      t.timestamps
    end
    add_index :secret_taggings, :secret_id
  end
end
