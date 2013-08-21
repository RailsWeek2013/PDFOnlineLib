class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :pdfid
      t.integer :userid

      t.timestamps
    end
  end
end
