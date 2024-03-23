class AddLocalizedFieldsToAbouts < ActiveRecord::Migration[7.0]
  def change
    add_column :abouts, :title_ar, :string
    add_column :abouts, :founder_title, :string
    add_column :abouts, :founder_title_ar, :string
  end
end
