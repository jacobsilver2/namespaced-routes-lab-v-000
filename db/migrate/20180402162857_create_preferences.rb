class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string "song_sort_order"
    end
  end
end
