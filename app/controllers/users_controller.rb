class UsersController < ApplicationController
	require 'url_helper'

	def index
		@users = User.all
	end

	def show
    @user = User.friendly.find(params[:username])
  end

	def edit
	end

end
