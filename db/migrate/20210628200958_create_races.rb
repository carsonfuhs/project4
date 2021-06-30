class CreateRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :races do |t|
      t.string :name
      t.string :track
      t.string :firstPlace
      t.string :secondPlace
      t.string :thirdPlace

      t.timestamps
    end
  end
end
