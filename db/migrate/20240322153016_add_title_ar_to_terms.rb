class AddTitleArToTerms < ActiveRecord::Migration[7.0]
  def change
    add_column :terms, :title_ar, :string
  end
end
