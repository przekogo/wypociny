class CompaniesController < ApplicationController

  def new
    @company = Company.new
  end

  def create
    user = User.new(email: params[:email], password: params[:password])
    user.role = "company"
    if user.save
      company = Company.new(company_name: params[:company_name], company_description: params[:company_description], contact_name: params[:contact_name], contact_surname: params[:contact_surname], contact_telephone: params[:contact_telephone], company_address: params[:company_address], company_address2: params[:company_address2],  user_id: User.where(email: params[:email]).last.id)    
      if company.save
        user.company_id = company.id
        user.save
      else
        user.destroy  #W razie błędu w zapisie do bazy usuwamy wszystko.
      end
    end
    redirect_to new_user_session_path, notice: "Lubisz placki!"
  end

  def show
    @company=Company.find(params[:id])
  end



end