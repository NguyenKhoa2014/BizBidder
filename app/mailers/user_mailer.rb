class UserMailer < ApplicationMailer



  default from: 'notifications@BizBidder.com'


  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end


  def accept_email(proposalid)
    proposal = Proposal.find(proposalid)
    sp = ServiceProvider.find(proposal.service_provider_id)
    @user = User.find(sp.user_id)
    puts  "ALL THREE COMPONENTS FOUND"
    mail(to: 'tysonrai111@gmail.com', subject: 'Proposal Accepted')
  end

end
