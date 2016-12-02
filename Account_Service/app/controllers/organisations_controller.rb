class OrganisationsController < ApplicationController

  def true
    user =Organisation.find_by(login: params[:login])
    if(user.valid_password?(params[:password]))
      render json: {status: :ok}
    else
      render json: {status: :ko}
    end
  end

end
