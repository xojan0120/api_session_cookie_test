class SessionsController < ApplicationController
  include ActionController::Cookies
  def save
    session['uid'] = 'john'
    cookies['uid'] = 'smith'
    render status: 200, json: { message: 'save' }
  end

  def load 
    render status: 200, json: { message: "load: #{session['uid']}, cookie: #{cookies['uid']}" }
  end
end
