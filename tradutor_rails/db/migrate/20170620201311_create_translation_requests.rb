class CreateTranslationRequests < ActiveRecord::Migration
  def change
    create_table :translation_requests do |t|
      t.string :text

      t.timestamps
    end
  end
end
