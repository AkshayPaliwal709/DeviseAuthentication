class RegistrationController < Devise::RegistrationsController

def user_params
      params.require(:member).permit(:username, :email, :password, :password_confirmation, :remember_me)

    end

def new
    #super
    @member= Member.new
    @contact = Contact.new
  end

  def create

    @member = Member.new
    @member.username = params[:member][:username]
    @member.email = params[:member][:email]
    @member.password = params[:member][:password]
    @member.password_confirmation =params[:member][:password_confirmation]
    
    @contact = Contact.new
    @contact.mobile = params[:contact][:mobile]
    @contact.address = params[:contact][:address]
    @member.valid?


    if @member.errors.blank?

     @member.save 
     @contact.member = @member
     @contact.save
     
      flash[:notice] = "created"
      redirect_to dashboard_path
    else
     render :action => "new"
    end
    end
     
end

 