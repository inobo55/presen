class PowerpointController < ApplicationController
	# powerpoint-addinから受け取った情報を
	# Testテーブルに格納する
	def post
		data = Hash.new
		data["name"] = params[:name]
		test = Test.new(data)
		test.save
		# test.save unless test.exists?(data["name"])
	end

	

end
