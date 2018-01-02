class CreatePlanets < ActiveRecord::Migration[5.1]
	def change
		create_table :planets do |t|
			t.string :name
			t.string :distance_from_sun
			t.string :mass
			t.string :average_temperature
			t.string :volume
			t.string :diameter
			t.string :orbital_period
			t.integer :moons
			t.string :length_of_day
			t.string :gravity
			t.string :major_gases
			t.timestamps

		end
	end
end
