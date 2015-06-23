class CreateHits < ActiveRecord::Migration
  def change
    create_table :hits do |t|
      t.integer :hits

      t.timestamps
    end
  end
end
