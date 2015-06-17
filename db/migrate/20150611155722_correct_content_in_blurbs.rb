class CorrectContentInBlurbs < ActiveRecord::Migration
  def change
    change_column :blurbs, :content, :text
  end
end
