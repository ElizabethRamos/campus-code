class CreateTraducoes < ActiveRecord::Migration
  def change
    create_table :traducoes do |t|
      t.string :portuguese
      t.string :english

      t.timestamps
    end
  end
end
