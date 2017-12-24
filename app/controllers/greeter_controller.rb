class GreeterController < ApplicationController
  def hello
  	random_name = ["Sandesh","Naagshakti"]
  	@name = random_name.sample
  	@time = Time.now
  end
end
