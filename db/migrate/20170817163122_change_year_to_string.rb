class ChangeYearToString < ActiveRecord::Migration[5.0]
  def change
    change_column(:albums, :year, :string)
  end
end
