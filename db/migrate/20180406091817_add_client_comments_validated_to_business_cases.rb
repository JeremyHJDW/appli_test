class AddClientCommentsValidatedToBusinessCases < ActiveRecord::Migration[5.1]
  def change
    add_column :business_cases, :client_comments_validated, :boolean
  end
end
