# frozen_string_literal: true

# Users default controller
class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
end
