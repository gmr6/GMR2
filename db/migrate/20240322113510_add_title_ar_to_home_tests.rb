class AddTitleArToHomeTests < ActiveRecord::Migration[7.0]
  def change
    add_column :home_tests, :title_ar, :string
  end
end
