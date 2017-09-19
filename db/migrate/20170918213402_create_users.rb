# User migration
class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :forename
      t.string :surname
    end
  end
end
