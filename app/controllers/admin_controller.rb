class AdminController < ApplicationController
  @@acess = 'eyJpc3MiOiJzY290Y2guaW8iLCJleHAiOjEzMDA4MTkzODAsIm5hbWUiOiJDaHJpcyBTZXZpbGxlamEiLCJhZG1pbiI6dHJ1ZX0'

  def category
    @acess = @@acess
  end
  def disorder
    @acess = @@acess
  end
  def symptom
    @acess = @@acess
  end
  def UnresponsiveDisorder
    @acess = @@acess
  end

end
