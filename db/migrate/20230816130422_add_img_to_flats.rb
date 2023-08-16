class AddImgToFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :img, :string
  end
end
