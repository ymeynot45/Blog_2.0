class CreateUnicorns < ActiveRecord::Migration
  def change
    create_table :unicorns do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
