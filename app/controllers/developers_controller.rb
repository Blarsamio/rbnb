class DevelopersController < ApplicationController
  def index
    @developers = Developer.all
    @photos = ['https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1651129481/cdowzyhiutl7wuxvxpqt.jpg', 'https://avatars.githubusercontent.com/u/94052650?v=4', 'https://avatars.githubusercontent.com/u/101596254?v=4', 'https://avatars.githubusercontent.com/u/99811063?v=4', 'https://avatars.githubusercontent.com/u/47982114?v=4', 'https://avatars.githubusercontent.com/u/102415406?v=4', 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1652454583/xfegxdz3tmqjcbj6c89t.jpg', 'https://avatars.githubusercontent.com/u/101748011?v=4', 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1632299096/lugr6zapkeya0sadlnvr.jpg', 'https://avatars.githubusercontent.com/u/94487726?v=4', 'https://avatars.githubusercontent.com/u/98890043?v=4']
  end

  def show
    @booking = Booking.new
    @developer = Developer.find(params[:id])
  end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(developers_params)
    @developer.user = current_user
    @developer.language = params[:language]
    if @developer.save
      redirect_to developers_path
    else
      render :new
    end
  end

  private

  def developers_params
    params.require(:developer).permit(:rating, :description, :first_name, :last_name, :language, :photo, :address)
  end
end
