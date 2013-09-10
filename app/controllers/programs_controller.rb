class ProgramsController < ApplicationController
 before_filter :require_login
  def index
     if params[:registro] == nil or params[:registro] <= '0' then 
        params[:registro] = 2 
    end
    @programs = Program.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)

    respond_to do |format|
      format.html 
      format.json { render json: @programs }
    end
  end

  def show
      @program = Program.find(params[:id])
  end

  def new
      @program = Program.new
  end

  def edit
     @program = Program.find(params[:id])
  end

  def create
      @program = Program.new(params[:program])
      render :action => :new unless @program.save
      
  end

  def update
      @program = Program.find(params[:id])
      render :action => :edit unless @program.update_attributes(params[:program])
  end

  def destroy
      @program = Program.find(params[:id])
      @program.destroy
     
  end  
end
