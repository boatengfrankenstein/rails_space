class CreateGeoData < ActiveRecord::Migration
  def self.up
    create_table :geo_data do |t|
      t.column :zip_code, :text
      t.column :latitude, :float8
      t.column :longitude, :float8
      t.column :city, :text
      t.column :state, :text
      t.column :county, :text
#      t.column :type, :text
    end
    add_index "geo_data", ["zip_code"], :name => "zip_code_optimization"

#    csv_file = "#{RAILS_ROOT}/db/migrate/geo_data.csv"
#    fields = '(zip_code, latitude, longitude, city, state, county)'

#    execute "LOAD DATA INFILE '#{csv_file}' INTO TABLE geo_data FIELDS " +
#            "TERMINATED BY ',' OPTIONALLY ENCLOSED BY \"\"\"\" " +
#            "LINES TERMINATED BY '\n' " + fields
#     execute "COPY geo_data FROM '/home/bnelson/rails_space/db/migrate/geo_data2.csv' DELIMITERS ',' CSV QUOTES '"'"
  end

  def self.down
    drop_table :geo_data

  end
end
