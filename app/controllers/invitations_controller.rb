class InvitationsController < ApplicationController
  def index
    @invitations = Invitation.where(to: current_user.email)
  end

  def new
    @invitation = Invitation.new
  end

  def create
    if invitation_params[:to] != current_user.email
      @invitation = Invitation.find_or_create_by(to: invitation_params[:to], from: current_user.email)

      if @invitation.save
        redirect_to root_path, notice: 'Your friend request has been succesfully sent'
      else
        render :new 
      end
    else
      redirect_to root_path, error: 'You can\'t invite yourself' 
    end
  end

  def accept
    invitation = Invitation.find_by(id: params[:id])
    friend = User.find_by(email: invitation.from)
    current_user.friends << friend
    friend.friends << current_user
    current_user.save!
    friend.save!
    invitation.destroy!
    redirect_to root_path, success: 'You have accepted the request'
  end

  def reject
    invitation = Invitation.find_by(id: params[:id])
    invitation.destroy!
    redirect_to root_path, success: 'You have rejected the request'
  end

  def friends
    @friends = current_user.friends
  end

  def remove_friend
    current_user.friends.find_by(id: params[:id]).destroy!
    redirect_to root_path, success: 'You have deleted a friend'
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def invitation_params
    params.require(:invitation).permit(:to)
  end
end
