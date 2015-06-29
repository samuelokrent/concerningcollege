class CreateBackups < ActiveRecord::Migration
  def change
    create_table :backups do |t|

      t.timestamps
    end
  end
end
