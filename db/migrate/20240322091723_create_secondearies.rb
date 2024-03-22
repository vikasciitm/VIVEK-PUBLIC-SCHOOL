class CreateSecondearies < ActiveRecord::Migration[7.0]
  def change
    create_table :secondearies do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :number
      t.string :dob
      t.string :add

      t.timestamps
    end
  end
end
