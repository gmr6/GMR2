class AddTitleArToHomeSites < ActiveRecord::Migration[7.0]
  def change
    add_column :home_sites, :title_ar, :string
  end
end
