class RolesController < ApplicationController
   before_filter :require_login
  def index
  
    @roles = Role.all

    respond_to do |format|
      format.html 
      format.json { render json: @roles }
    end
  end
  def show
      @role = Role.find(params[:id])
  end

  def new
      @role = Role.new
  end

  def edit
     @role = Role.find(params[:id])
  end

  def create
      @role = Role.new(params[:rol])
      render :action => :new unless @role.save
      @roles = Role.all
      
  end

  def update
      @role = Role.find(params[:id])
      render :action => :edit unless @role.update_attributes(params[:role])
  end

  def destroy
      @role = Role.find(params[:id])
      @role.destroy
      @roles = Role.all
     
  end  
end
