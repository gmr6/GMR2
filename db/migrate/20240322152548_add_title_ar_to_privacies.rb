class AddTitleArToPrivacies < ActiveRecord::Migration[7.0]
  def change
    add_column :privacies, :title_ar, :string
  end
end
