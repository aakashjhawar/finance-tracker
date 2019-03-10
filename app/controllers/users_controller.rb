class UsersController < ApplicationController

	def my_portfolio
		@user = current_user
		@user_stocks = current_user.stocks	
	end

	def my_friends
		@friendships = current_user.friends
	end
		
	def search
		# puts params[:search_param]
		@user = User.search(params[:search_param])
		render json: @user
	end

end