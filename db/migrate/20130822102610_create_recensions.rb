class CreateRecensions < ActiveRecord::Migration
  def change
    create_table :recensions do |t|
      t.integer :user_id
      t.integer :pdf_file_id
      t.string :recension

      t.timestamps
    end
  end
end
