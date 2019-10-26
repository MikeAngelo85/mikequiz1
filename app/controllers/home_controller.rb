class HomeController < ApplicationController
  def index
    redirect_to new_new_music_path
    #@music = 
    # @simple_music = SimpleMusic.new
  end

  def create
    # puts " "
    # puts " "
    # puts "START ========================="
    # puts params[:simple_music]
    # puts "END ========================="
    # #debug(params)
    # @simple_music = SimpleMusic.new(params[:simple_music])

    # respond_to do |format|
    #   if @simple_music.save
    #     format.html { redirect_to home_index_path, notice: 'Simple music was successfully created.' }
    #     format.json { render :index, status: :created, location: @simple_music }
    #   else
    #     format.html { render :index }
    #     format.json { render json: @simple_music.errors, status: :unprocessable_entity }
    #   end
    # end
  end

end
