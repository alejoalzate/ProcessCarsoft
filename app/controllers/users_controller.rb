class UsersController < ApplicationController
    before_filter :find_user, :require_login, :except => [ :index, :create, :new ]
    autocomplete :center, :name, :full => true
   def index 
       
        @users = User.search(params[:search], params[:page])

        output = UserList.new(@users,view_context) # Aquí instancio el documento pdf
        respond_to do |format|
        format.pdf{
         send_data output.render, :filename => "userslist.pdf", :type => "application/pdf" # este parámetro permite ver el documento pdf en
        }
       format.html #{ render :text => "<h1>Use .pdf</h1>".html_safe }
      format.json { render json: @users  }
    end
  
  end

    def new
        @user = User.new
    end

    def create
        @user = User.new(params[:user])
        render :action => :new unless @user.save
        Record.create(:user_id => @user.id)
        @users = User.all 
    end 
    
    def show
        @user = User.find(params[:id])

    end

    def edit
        @user = User.find(params[:id])
    end

    def update
          @user = User.find(params[:id])
          render :action => :edit unless @user.update_attributes(params[:user])
    end
    
    def activate
        if @user = User.load_from_activation_token(params[:id])
          @user.activate!
          redirect_to(login_path, :notice => 'Usuario Activado.')
        else
          not_authenticated
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        @users = User.all 

    end
    
    private

  def find_user
      @user = User.find(params[:id]) if params[:id]
  end  

end
