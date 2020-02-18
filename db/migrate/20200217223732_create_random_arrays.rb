class CreateRandomArrays < ActiveRecord::Migration[5.2]
  def change
    create_table :random_arrays do |t|
      t.string :number_set
    end
  end
end
