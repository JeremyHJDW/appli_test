class UsersController < ApplicationController
  def index
    @var = "Salut je suis accesible"
    @users = User.all
    @users.each do |user|
      puts "Name = " + user.name
    end
  end

  def create
    # params
  end
end
