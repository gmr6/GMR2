class AddArabicFieldsToHomeBoxes < ActiveRecord::Migration[7.0]
  def change
    add_column :home_boxes, :title_ar, :string
    add_column :home_boxes, :description_ar, :text
  end
end
