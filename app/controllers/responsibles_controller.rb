class ResponsiblesController < ApplicationController

  before_filter :find_responsible, :require_login, :except => [ :index, :create, :new ]

  def index
   if params[:registro] == nil or params[:registro] <= '0' then 
            params[:registro] = 2
    end
        @responsibles = Responsible.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @responsibles }
    end
  end

  def show
     
  end

  def new
      @responsible = Responsible.new
  end

  def edit
      
  end

  def create
      @responsible = Responsible.new(params[:responsible])
      render :action => :new unless @responsible.save
  end

  def update
      
      render :action => :edit unless @responsible.update_attributes(params[:responsible])
  end

  def destroy
    
      @responsible.destroy
  end

  private

  def find_responsible
      @responsible = Responsible.find(params[:id]) if params[:id]
  end
  
end