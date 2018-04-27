class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, default: "NAME"
      t.string :email, default: "NAME@MAIL.COM"

      t.timestamps
    end
  end
end
