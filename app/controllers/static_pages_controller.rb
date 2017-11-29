class StaticPagesController < ApplicationController
	def about
	end
	def help
	end

	def home
		if logged_in?
			@micropost  = current_user.microposts.build
			@feed_items = current_user.feed.paginate(page: params[:page], per_page: 20)
		end
	end

	def contact

	end



	def send_email
		@email = params{:send_email}
		# puts params
		UserMailer.send_email.deliver_now
		flash[:success] = "Message Sent!"

	end
end
