class CreateSubrooms < ActiveRecord::Migration
  def change
    create_table :subrooms do |t|
    	t.string :name
    	t.text :activity
    	t.string :team_mates
    	t.string :age
    	t.string :location
    	t.datetime :start_time
    	t.datetime :end_time
    	t.references :bigroom
    	t.references :user

      t.timestamps
    end
  end
end
