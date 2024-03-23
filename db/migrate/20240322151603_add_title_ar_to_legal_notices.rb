class AddTitleArToLegalNotices < ActiveRecord::Migration[7.0]
  def change
    add_column :legal_notices, :title_ar, :string
  end
end
