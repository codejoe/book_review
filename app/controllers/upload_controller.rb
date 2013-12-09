class UploadController < ApplicationController
	def index
		#"Hello"
		render :file => 'app/views/uploads/uploadfile.rhtml'
	end
	def uploadFile
		post	= DataFile.save(params[:upload])
		render	:text	=> "File has been uploaded"
	end
end
