class CarChangeYearToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :cars, :year, :integer
  end
end
