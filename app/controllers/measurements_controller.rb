# frozen_string_literal: true

class MeasurementsController < ApplicationController
  def index
    @measurements = Measurement.all
    render json: {
      status: 202,
      measurements: @measurements
    }
  end

  def show
    @measurement = Measurement.find_by(id: params[:id])
    render json: {
      status: 202,
      measurement: @measurement
    }
  end

  def create
    @measurement = Measurement.new(
      user_id: params[:measurement][:user_id],
      item_id: params[:measurement][:item_id],
      measurement: params[:measurement][:measurement]
    )
    if @measurement.valid?
      @measurement.save
      render json: {
        status: :created,
        measurement: @measurement
      }
    else
      render json: {
        status: 401,
        error: @measurement.errors.full_messages
      }
    end
  end
end
