class WelcomeController < ApplicationController
  def index
    @SintomasCad = Sintoma.order :nome
  end

  def info
  end

  def graphics
  end

  def admin
  end
end
