class UploadersController < ApplicationController
  before_action :set_uploader, only: [:edit, :update, :destroy]

  def index
  @uploaders = Uploader.all
  @users  = User.all
  #binding.pry
  #raise
  end

  def new
    if params[:back]
      @uploader=Uploader.new(uploaders_params)
#      binding.pry
    else
      @uploader=Uploader.new
    end
  end

  def create
    #binding.pry
    @uploader=Uploader.create(uploaders_params)
    @uploader.user_id = current_user.id
    #render :new if @uploader.invalid?
      if @uploader.save
        redirect_to uploaders_path, notice: "写真を投稿しました！"
      else
        render 'new'
      end
  end

  def edit
    @uploader=Uploader.find(params[:id])
  end

  def update
    @uploader=Uploader.find(params[:id])

    if  @uploader.update(uploaders_params)
      redirect_to uploaders_path, notice: "写真を更新しました!"
    else
      render 'edit'
    end
  end

  def destroy
  @uploader=Uploader.find(params[:id])
  @uploader.destroy
  redirect_to uploaders_path, notice: "写真を削除しました!"
  end

  def confirm
    @uploader = Uploader.new(uploaders_params)
    render :new if @uploader.invalid?
  end


  private
    def uploaders_params
    binding.pry
      #params.require(:uploader).permit(:action,:image)
      params.fetch(:uploader,{}).permit(:image)
    end
    def set_uploader
      @uploader = Uploader.find(params[:id])
    end
end
