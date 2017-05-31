class SensorsController < ApplicationController

  def index
    @sensors = Sensor.all
  end

  def show
    @sensor = Sensor.find(params[:id])
  end

  def new

  end

  def create
    @sensor = Sensor.new(sensor_params)

    @sensor.save
    redirect_to @sensor
  end

  private
    def sensor_params
      params.require(:sensor).permit(:name, :where, :used_for, :level, :scale, :resolution, :accuracy, :time_result, :time, :innovation, :cost, :summary, :person, :reference_project, :info)
    end
end
