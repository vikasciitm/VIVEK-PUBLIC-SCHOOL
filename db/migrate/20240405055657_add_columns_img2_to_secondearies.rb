class AddColumnsImg2ToSecondearies < ActiveRecord::Migration[7.0]
  def change
    add_column :secondearies, :image, :string
  end
end
