class NewMusicsController < ApplicationController
  before_action :set_new_music, only: [:show, :edit, :update, :destroy]

  # GET /new_musics
  # GET /new_musics.json
  def index
    @new_musics = NewMusic.all
  end

  # GET /new_musics/1
  # GET /new_musics/1.json
  def show
  end

  # GET /new_musics/new
  def new
    @new_music = NewMusic.new
  end

  # GET /new_musics/1/edit
  def edit
  end

  # POST /new_musics
  # POST /new_musics.json
  def create
    @new_music = NewMusic.new(new_music_params)

    respond_to do |format|
      if @new_music.save
        format.html { redirect_to @new_music, notice: 'New music was successfully created.' }
        format.json { render :show, status: :created, location: @new_music }
      else
        format.html { render :new }
        format.json { render json: @new_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_musics/1
  # PATCH/PUT /new_musics/1.json
  def update
    respond_to do |format|
      if @new_music.update(new_music_params)
        format.html { redirect_to @new_music, notice: 'New music was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_music }
      else
        format.html { render :edit }
        format.json { render json: @new_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_musics/1
  # DELETE /new_musics/1.json
  def destroy
    @new_music.destroy
    respond_to do |format|
      format.html { redirect_to new_musics_url, notice: 'New music was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_music
      @new_music = NewMusic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_music_params
      params.require(:new_music).permit(:artist, :genre, :song, :description)
    end
end
