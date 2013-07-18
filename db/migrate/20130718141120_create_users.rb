class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :author, null: false
      t.string :password_hash
      t.integer :post_count, default: 0
      t.timestamps
    end
  end
end