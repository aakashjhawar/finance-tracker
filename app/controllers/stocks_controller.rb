class StocksController < ApplicationController

	# def search
	# 	if params[:stock].present?
	# 		@stock = Stock.new_from_lookup(params[:stock])
	# 		# render json: @stock
	# 		if @stock
	# 			respond_to do |format|
	# 				format.js { render partial: 'users/result' } 
	# 			end
	# 		else
	# 			flash[:danger] = "You have entered an incorrect symbol."
	# 			redirect_to my_portfolio_path
	# 		end
	# 	else
	# 		flash[:danger] = "You have entered an empty string."
	# 		redirect_to my_portfolio_path
	# 	end
	# end

	def search
    if params[:stock].blank?
      flash.now[:danger] = "You have entered an empty search string"
    else
      @stock = Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = "You have entered an incorrect symbol" unless @stock
    end
    respond_to do |format|
      format.js { render partial: 'users/result' }
    end
  end

end