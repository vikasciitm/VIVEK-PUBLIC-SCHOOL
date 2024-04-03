class AddColumnsToAdmissions < ActiveRecord::Migration[7.0]
  def change
    add_column :admissions, :number, :string
  end
end
