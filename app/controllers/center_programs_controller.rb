class CenterProgramsController < ApplicationController
   before_filter :require_login
  def index
    if params[:registro] == nil or params[:registro] <= '0' then 
        params[:registro] = 2 
    end
    @center_programs = CenterProgram.page(params[:page]).per_page(params[:registro].to_i)

    respond_to do |format|
      format.html 
      format.json { render json: @center_programs }
    end
  end

  def show
      @center_program = CenterProgram.find(params[:id])
  end

  def new
      @center_program = CenterProgram.new
  end

  def edit
      @center_program = CenterProgram.find(params[:id])
  end

  def create
      @center_program = CenterProgram.new(params[:center_program])
      render :action => :new unless @center_program.save
  end

  def update
      @center_program = CenterProgram.find(params[:id])
      render :action => :edit unless @center_program.update_attributes(params[:center_program])
  end

  def destroy
      @center_program = CenterProgram.find(params[:id])
      @center_program.destroy
  end
  
end
