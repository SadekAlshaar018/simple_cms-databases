class DemoController < ApplicationController

  layout false
  def index
    # synatx for render template
    # render(template)
    render('index')
  end

  def hello
    @array = [1,'sadek',3,'All ',6]
    @id = params['id']
    @page = params[:page]
  render('hello')
  end

  def other_hello
    # it is a synatx for redirect but cuz we in controller it is can be whithout :controller => 'demo'
    # redirect_to(:controller => 'demo', :action => 'index')
    redirect_to(:action => 'hello')
  end

  def sadek
    redirect_to('https://sadekalshaar.herokuapp.com/')

  end



end
