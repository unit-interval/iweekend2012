class IndexController < ApplicationController
  before_filter :admin_only, :except => [:index, :apply, :submit, :login, :signin, :confirm, :agenda, :faq]

  def index
  end

  def apply
  	@participant = Participant.new
  end

  def submit
  	@participant = Participant.new(params[:participant])

  	if @participant.save
  		redirect_to action: "confirm"
  	else
  	 	render action: "apply"
  	end
  end

  def login
  	if session[:admin]
  	  redirect_to console_path
  	end
  end

  def signin
	if params[:password] == '20121208'
		session[:admin] = true
		redirect_to console_path
  	else
  		redirect_to login_path, :notice => 'wrong password'
  	end
  end

  def console
  	@participants = Participant.all
  end

  def confirm
  end

  def agenda
  end

  def faq
  end
end
