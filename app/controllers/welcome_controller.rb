class WelcomeController < ApplicationController
  layout :choose_layout

  def index
  	
  end

  def choose_layout
  	case action_name

  	when 'index'
  	  'welcome'
  	else
      'application'
    end
  end


end
