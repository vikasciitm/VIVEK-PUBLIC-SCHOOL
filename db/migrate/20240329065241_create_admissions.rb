class CreateAdmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :admissions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :peen
      t.string :klass

      t.timestamps
    end
  end
end
