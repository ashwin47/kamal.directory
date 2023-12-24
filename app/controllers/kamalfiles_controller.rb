class KamalfilesController < ApplicationController
  before_action :set_kamalfile, only: %i[show edit update destroy favorite unfavorite]
  before_action :authenticate_user!, only: %i[new create edit update destroy favorite unfavorite]
  before_action :authorize_user!, only: %i[edit update destroy]

  def index
    @kamalfiles = Kamalfile.with_favorites
  end

  def show
  end

  def new
    @kamalfile = Kamalfile.new
  end

  def edit
  end

  def create
    @kamalfile = current_user.kamalfiles.new(kamalfile_params)

    if @kamalfile.valid?
      @kamalfile.server_count = @kamalfile.count_servers
      @kamalfile.accessory_count = @kamalfile.count_accessories
      if @kamalfile.save
        redirect_to @kamalfile, notice: "Kamalfile was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    else
      render :new, status: :unprocessable_entity, alert: @kamalfile.errors
    end
  end

  def update
    if @kamalfile.update(kamalfile_params)
      redirect_to @kamalfile, notice: "Kamalfile was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @kamalfile.destroy
    redirect_to kamalfiles_url, notice: "Kamalfile was successfully destroyed."
  end

  def favorite
    current_user.favorites.create(favoritable: @kamalfile)
    render partial: "kamalfiles/favorite", locals: {kamalfile: @kamalfile}
  end

  def unfavorite
    current_user.favorites.find_by(favoritable: @kamalfile).destroy
    render partial: "kamalfiles/favorite", locals: {kamalfile: @kamalfile}
  end

  private

  def set_kamalfile
    @kamalfile = Kamalfile.find(params[:id])
  end

  def kamalfile_params
    params.require(:kamalfile).permit(:name, :content, :app_link, :github_link, :notes)
  end

  def authorize_user!
    unless @kamalfile.user == current_user
      redirect_to kamal_path, alert: "You are not authorized to perform this action."
    end
  end
end
