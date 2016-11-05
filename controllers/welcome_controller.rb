class WelcomeController < ApplicationController
  def index
    send_file 'public/compose.png', type: 'image/png', disposition: 'inline'
  end
end
