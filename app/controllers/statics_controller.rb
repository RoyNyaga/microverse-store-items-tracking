# frozen_string_literal: true

class StaticsController < ApplicationController
  def home
    render json: { status: 'its working' }
  end
end
