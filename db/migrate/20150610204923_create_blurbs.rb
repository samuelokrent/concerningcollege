class CreateBlurbs < ActiveRecord::Migration
  def change
    create_table :blurbs do |t|
      t.string :page
      t.string :content

      t.timestamps
    end
    add_index :blurbs, :page
  end
end
