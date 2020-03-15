# frozen_string_literal: true

class SessionsController < ApplicationController
  include CurrentUserConcern

  def create
    user = User.find_by(name: params['user']['name'])
    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: user
      }
    else
      render json: {
        status: 401,
        logged_in: false,
        error: 'user not found'
      }
    end
  end

  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }
    else
      render json: {
        logged_in: false,
        error: 'user does not exist'
      }
    end
  end

  def logout
    reset_session
    render json: {
      status: 200,
      logged_out: true
    }
  end
end
