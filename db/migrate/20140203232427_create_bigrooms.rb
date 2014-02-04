class CreateBigrooms < ActiveRecord::Migration
  def change
    create_table :bigrooms do |t|
    	t.string :name
    	t.text :activity
    	t.string :team_mates
    	t.string :age
    	t.string :location
    	t.datetime :start_time
    	t.datetime :end_time

      t.timestamps
    end
  end
end
