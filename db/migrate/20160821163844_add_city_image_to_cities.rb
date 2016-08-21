class AddCityImageToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :city_image, :string
  end
end
