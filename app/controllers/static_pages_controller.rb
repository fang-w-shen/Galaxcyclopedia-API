class StaticPagesController < ApplicationController



	def about

	end




	def help
	end

	def home
		if logged_in? && params[:search]
			@post  = current_user.posts.build
			@feed_items = Post.search(params[:search]).paginate(page: params[:page], per_page: 12)
		elsif logged_in? && params[:searchauthor]
			@post  = current_user.posts.build
			@feed_items = Post.searchauthor(params[:searchauthor]).paginate(page: params[:page], per_page: 12)
		elsif logged_in?
			@post  = current_user.posts.build
			@feed_items = current_user.feed.paginate(page: params[:page], per_page: 12)
  		else

		end
	end

	def contact

	end


	def send_email
		@email = params[:send_email]
		UserMailer.send_email(@email).deliver_now
		redirect_to contact_url
		flash[:success] = "Your Message Was Sent Successfully and We'll Try To Get Back To You Soon! Thank You!"
	end
end
