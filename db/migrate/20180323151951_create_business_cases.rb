class CreateBusinessCases < ActiveRecord::Migration[5.1]
  def change
    create_table :business_cases do |t|
      t.string :localisation
      t.string :industry
      t.string :corporate_size
      t.string :expertise
      t.text :client_problem
      t.text :methodology
      t.text :results
      t.text :client_comments
      t.text :link

      t.timestamps
    end
  end
end
