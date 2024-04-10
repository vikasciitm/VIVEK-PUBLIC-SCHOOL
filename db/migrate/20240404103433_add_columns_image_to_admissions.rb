class AddColumnsImageToAdmissions < ActiveRecord::Migration[7.0]
  def change
    add_column :admissions, :image, :string
  end
end
