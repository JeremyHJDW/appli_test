class AddTitleToBusinessCases < ActiveRecord::Migration[5.1]
  def change
    add_column :business_cases, :title, :string
  end
end
