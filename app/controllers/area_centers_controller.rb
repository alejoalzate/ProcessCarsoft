class AreaCentersController < ApplicationController

  before_filter :find_responsible_area_centers
  before_filter :find_area_center, :except => [ :index, :create, :new ]

   def index
    @area_centers = @responsible.area_centers.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @area_centers }
    end
  end

  def show
     
  end

  def new
      @area_center =  AreaCenter.new
  end

  def edit
     
  end

  def create
      @area_center = area_center.build(params[:area_center])
      render :action => :new unless @area_center.save
  end

  def update
    render :action => :edit unless @area_center.update_attributes(params[:area_center])
  end

  def destroy
    @area_center.destroy
  end

  private

  def find_area_center
      @area_center = AreaCenter.find(params[:id]) if params[:id]
  end

  private

  def find_responsible_area_centers
     @responsible = Responsible.find(params[:responsible_id])
     @area_center = AreaCenter.find(params[:id]) if params[:id]
  end  
end