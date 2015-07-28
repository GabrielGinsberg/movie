class UserController < ApplicationController
  def show
    @film = Film.find_by_id(params['id'])
  end

  def new
  end
  
  def create
    @film = Film.new
    @film.title = params['title']
    @film.image = params['image']
    @film.link = params['link']
    if @film.save
      redirect_to "/mov/#{ @film.id }"
    else 
      render 'new'
    end
  end
  
  def edit
    @film = Film.find_by(id: params['id'])
  end
  
  def update
    @film = Film.find_by(id: params['id'])
    @film.title = params['title']
    @film.image = params['image']
    @film.link = params['link']if @film.save
    if redirect_to "/mov/#{ @film.id }"
    else
      render 'edit'
    end
  end
  def destroy
    @film = Film.find_by(id: params['id'])
    @film.destroy
    redirect_to "/mov_index"
  end
  
  def index 
    @films = Film.all
  end
end