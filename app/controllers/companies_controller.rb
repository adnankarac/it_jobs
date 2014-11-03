class CompaniesController < ApplicationController
	def new
		@company = Company.new
	end

	def create
		params.require(:company).permit!
		@company = Company.create!(params[:company])
		redirect_to company_path(@company)
	end

	def index
		render :text => @company.id
	end

	def show
		@company = Company.find(params[:id])
		render :text => @company.username
	end
end
