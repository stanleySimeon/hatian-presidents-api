class CreatePresidents < ActiveRecord::Migration[7.0]
  def change
    create_table :presidents do |t|
      t.string :avatar
      t.string :name
      t.string :birth_year
      t.string :death_year
      t.string :took_of_office
      t.string :left_of_office
      t.string :party
      t.string :title

      t.timestamps
    end
  end
end
