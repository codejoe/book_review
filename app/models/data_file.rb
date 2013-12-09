class DataFile < ActiveRecord::Base
	def self.save upload
		name = upload['datafile'].original_filename
		directory = "public/tes_upload"
		path = File.join(directory, name)
		File.open(path, "wb") { |file| file.write(upload['datafile'].read)}
	end
end
