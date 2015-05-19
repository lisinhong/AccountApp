class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :kind
      t.integer :expense

      t.timestamps null: false
    end
  end
end
